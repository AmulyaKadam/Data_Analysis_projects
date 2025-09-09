# 🛒 E-commerce Project – Sales & Customer Insights  

_Analyzing online retail transactions to uncover customer behavior, product performance, and profitability using SQL and Python._  

---

## 📌 Table of Contents  
- [Overview](#overview)  
- [Business Problem](#business-problem)  
- [Dataset](#dataset)  
- [Tools & Technologies](#tools--technologies)  
- [Project Structure](#project-structure)  
- [Data Cleaning & Preparation](#data-cleaning--preparation)  
- [Exploratory Data Analysis (EDA)](#exploratory-data-analysis-eda)  
- [Research Questions & Key Findings](#research-questions--key-findings)  
- [Dashboard](#dashboard)  
- [How to Run This Project](#how-to-run-this-project)  
- [Final Recommendations](#final-recommendations)  
- [Author & Contact](#author--contact)  

---

## Overview  
The **E-commerce Sales & Customer Insights** project investigates transactional data from an online retail platform. The analysis focuses on **sales trends, product categories, customer segmentation, and profitability drivers**.  

Using **SQL** for structured queries and **Python** for statistical analysis and visualization, this project provides insights into:  
- Identifying the **most valuable customers** (RFM analysis)  
- Highlighting **top-performing products**  
- Understanding **seasonal sales patterns**  
- Detecting **churn risk signals**  

---

## Business Problem  
- Which products and categories generate the most **revenue and profit**?  
- Who are the **high-value customers**, and how can they be retained?  
- How do **seasonality and trends** affect sales?  
- What factors contribute to **customer churn**?  

---

## Dataset  
- **Order Transactions** (`orders.csv`) → order_id, customer_id, product_id, quantity, price, discount, order_date  
- **Customer Data** (`customers.csv`) → customer_id, name, country, registration_date  
- **Product Data** (`products.csv`) → product_id, category, brand, unit_price, cost  

---

## Tools & Technologies  
- **SQL** → joins, aggregations, CTEs  
- **Python** → Pandas, NumPy, Matplotlib, Seaborn, Scikit-learn  
- **Jupyter Notebook** → analysis & reporting  
- **Power BI** → interactive dashboards  

---

## Project Structure  
```
ecommerce-analysis/
│
├── README.md
├── notebooks/
│   ├── eda_ecommerce.ipynb
│   └── customer_segmentation.ipynb
├── data/
│   ├── orders.csv
│   ├── customers.csv
│   └── products.csv
├── scripts/
│   ├── preprocess_data.py
│   └── rfm_analysis.py
└── dashboard/
    └── ecommerce_dashboard.pbix
```

---

## Data Cleaning & Preparation  
- Removed duplicate transactions and invalid entries  
- Handled missing customer IDs and product prices  
- Derived new fields:  
  - `total_amount = quantity * unit_price - discount`  
  - `recency_days = last_purchase_date - today`  
  - `frequency = total_orders`  
  - `monetary = total_spent`  
- Standardized product categories for consistent grouping  

---

## Exploratory Data Analysis (EDA)  
- **Sales Trend**: Seasonal peaks in **November–December** due to holiday shopping  
- **Product Performance**: Electronics = highest revenue; Apparel = low margin  
- **Discount Impact**: High discounts increase sales but reduce profit margins  
- **Customer Base**: Majority of customers purchase only once; loyal segment drives bulk of revenue  

---

## Research Questions & Key Findings  
1. **Who are the most valuable customers?**  
   - Top 5% customers contribute ~40% of revenue (Pareto principle)  
2. **Which categories perform best?**  
   - Electronics dominate; Apparel underperforms in profitability  
3. **What are the churn signals?**  
   - Customers inactive for >90 days show low return probability  
4. **How do discounts affect revenue?**  
   - Moderate discounts boost conversion; heavy discounts erode profit  

---

## Dashboard  
The **Power BI dashboard** includes:  
- Monthly and seasonal revenue trends  
- Category-wise sales contribution  
- RFM segmentation (Champions, At Risk, Lost Customers)  
- Customer churn indicators  

---

## How to Run This Project  
```bash
# Clone repository
git clone https://github.com/AmulyaKadam/Data_Analysis_projects.git

# Navigate to project
cd Ecommerce_Project

# Install dependencies
pip install -r requirements.txt

# Launch Jupyter Notebook
jupyter notebook
```

---

## Final Recommendations  
- **Retention Strategy**: Target “At Risk” customers with personalized offers  
- **Product Optimization**: Phase out low-margin products; invest in Electronics  
- **Seasonal Campaigns**: Strengthen promotions in holiday season to maximize peak demand  
- **Churn Mitigation**: Create loyalty programs to encourage repeat purchases  

---

## Author & Contact  
**Amulya Kadam**  
📧 Email: <your-email-here>  
🔗 [LinkedIn](https://www.linkedin.com/)  
