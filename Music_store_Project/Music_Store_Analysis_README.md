# 🎵 Music Store Analysis – Digital Media Insights  

_Analyzing sales performance, customer preferences, and global trends in a digital music store using SQL and Python._  

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
The Music Store Analysis project investigates **track sales, customer demographics, and revenue by region** for a digital music platform. SQL queries were used to join multiple tables (albums, artists, customers, invoices), while Python handled advanced analytics and visualizations.  

The primary objective was to uncover **best-selling genres, artist popularity, and customer buying patterns** across different geographies.  

---

## Business Problem  
- Which **music genres and artists** contribute the most revenue?  
- How does revenue vary by **country and region**?  
- Who are the **top customers** and what are their purchasing behaviors?  
- Can we identify potential upselling/cross-selling opportunities?  

---

## Dataset  
- Relational database (`music_store.db`) containing:  
  - **Albums, Artists, Tracks** (track name, genre, duration, price)  
  - **Invoices** (purchase details, amounts, dates)  
  - **Customers** (name, country, email, spending history)  

---

## Tools & Technologies  
- **SQL**: Joins, subqueries, aggregation  
- **Python**: Pandas, Matplotlib, Seaborn  
- **Jupyter Notebook** for analysis & reporting  
- **GitHub** for version control  

---

## Project Structure  
```
music-store-analysis/
│
├── README.md
├── notebooks/
│   ├── music_store_queries.ipynb
│   └── eda_music_store.ipynb
├── data/
│   └── music_store.db
└── reports/
    └── music_sales_summary.pdf
```

---

## Data Cleaning & Preparation  
- Removed duplicate track entries  
- Standardized country names and currencies  
- Created a **genre revenue summary table** for further analysis  
- Calculated total revenue per customer  

---

## Exploratory Data Analysis (EDA)  
- **Genre Analysis**: Rock dominates with ~35% of sales, followed by Latin and Metal  
- **Artist Revenue**: Top 10 artists = ~50% of store revenue  
- **Geographic Trends**:  
  - USA and Canada lead in overall purchases  
  - Brazil shows strong growth potential  
- **Customer Spending**: Small subset of VIP customers responsible for disproportionate revenue  

---

## Research Questions & Key Findings  
1. **Which genre is most popular?** → Rock  
2. **Which artist generates the most revenue?** → Top artist revenue ~3x higher than average  
3. **Which country spends the most?** → USA leads by total revenue, but Germany & Brazil show higher ARPU (average revenue per user)  
4. **Who are the top customers?** → Top 5 spenders contribute ~15% of total sales  

---

## Dashboard  
- **Visualizations**:  
  - Genre sales distribution (Pie Chart)  
  - Revenue by country (Bar Chart)  
  - Top artists by revenue (Bar Chart)  

---

## How to Run This Project  
```bash
git clone https://github.com/AmulyaKadam/Data_Analysis_projects.git
cd Music_Store_Analysis
pip install -r requirements.txt
jupyter notebook
```

---

## Final Recommendations  
- Expand **Rock & Latin music catalogs** to boost sales  
- Introduce **regional promotions** in Brazil and Germany  
- Create a **loyalty program** targeting VIP spenders  
- Explore **subscription bundles** for frequent buyers  

---

## Author & Contact  
**Amulya Kadam**  
📧 Email: <your-email-here>  
🔗 [LinkedIn](https://www.linkedin.com/)  
