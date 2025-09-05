SELECT distinct customer_city FROM customers;

SELECT COUNT(*) AS Order_placed FROM orders
WHERE YEAR(order_purchase_timestamp) = 2017;


SELECT products.product_category AS category, ROUND(SUM(payments.payment_value),2) total_sales
FROM products 
JOIN order_items ON products.product_id = order_items.product_id
JOIN payments ON order_items.order_id = payments.order_id
GROUP BY category;



SELECT (SUM(CASE WHEN payment_installments >= 1 THEN 1 ELSE 0 END)/COUNT(*) * 100) AS Total_Percentage FROM payments;


SELECT customer_state, COUNT(*) AS Count FROM customers
GROUP BY customer_state
ORDER BY Count DESC;


SELECT UPPER(LEFT(MONTHNAME(order_purchase_timestamp),3)) AS Short_name , COUNT(*) AS Total_orders FROM orders
WHERE YEAR(order_purchase_timestamp) = 2018
GROUP BY Short_name;



WITH count_per_order AS 
(SELECT order_items.order_id , orders.customer_id, COUNT(order_items.order_item_id) AS oc
FROM order_items
INNER JOIN orders ON order_items.order_id = orders.order_id
GROUP BY order_items.order_id , orders.customer_id
)

SELECT customers.customer_city , ROUND(AVG(count_per_order.oc),2) AS avg_orders
FROM customers
INNER JOIN count_per_order ON customers.customer_id = count_per_order.customer_id
GROUP BY customers.customer_city
ORDER BY avg_orders DESC;




SELECT products.product_category AS category, ROUND((SUM(payments.payment_value)/(SELECT SUM(payment_value) FROM  payments))*100,2) total_percentage_sales
FROM products 
JOIN order_items ON products.product_id = order_items.product_id
JOIN payments ON order_items.order_id = payments.order_id
GROUP BY category;


SELECT products.product_category , COUNT(order_items.product_id) AS Count, AVG(order_items.price) AS Avg_price
FROM products
INNER JOIN order_items ON products.product_id = order_items.product_id
GROUP BY products.product_category
ORDER BY Avg_price DESC;


With total_revenue AS
(SELECT order_items.seller_id, ROUND(SUM(payments.payment_value),2) AS Total_revenue
FROM order_items
INNER JOIN payments ON order_items.order_id = payments.order_id
GROUP BY order_items.seller_id
)

SELECT * ,dense_rank() OVER(ORDER BY Total_revenue DESC)  AS Ranks FROM total_revenue;


WITH a AS
(SELECT orders.customer_id, orders.order_purchase_timestamp,payments.payment_value
FROM orders
INNER JOIN payments ON payments.order_id = orders.order_id
)

SELECT customer_id,order_purchase_timestamp,payment_value,
AVG(payment_value) OVER(PARTITION BY customer_id ORDER BY order_purchase_timestamp ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) AS moving_avg
FROM a;


WITH a AS 
(SELECT YEAR(orders.order_purchase_timestamp) AS Years, MONTH(orders.order_purchase_timestamp) AS Months, ROUND(SUM(payments.payment_value),2) AS Payments
FROM orders
JOIN payments ON payments.order_id = orders.order_id
GROUP BY Years,Months
)

SELECT * , SUM(Payments) OVER(ORDER BY Years,Months) AS Cummulative_sum 
FROM a;


WITH b AS
(SELECT YEAR(orders.order_purchase_timestamp) AS Years,ROUND(SUM(payments.payment_value),2) AS Payments
FROM orders
JOIN payments ON payments.order_id = orders.order_id
GROUP BY Years
)

SELECT Years, ((Payments - LAG(Payments, 1) OVER(ORDER BY Years)) /LAG(Payments, 1) OVER(ORDER BY Years)) * 100 AS yoy
FROM b;



with a as (select customers.customer_id,
min(orders.order_purchase_timestamp) first_order
from customers join orders
on customers.customer_id = orders.customer_id
group by customers.customer_id),

b as (select a.customer_id, count(distinct orders.order_purchase_timestamp) next_order
from a join orders
on orders.customer_id = a.customer_id
and orders.order_purchase_timestamp > first_order
and orders.order_purchase_timestamp < 
date_add(first_order, interval 6 month)
group by a.customer_id) 

select 100 * (count( distinct a.customer_id)/ count(distinct b.customer_id)) 
from a left join b 
on a.customer_id = b.customer_id ;