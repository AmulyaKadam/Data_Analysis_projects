# 📉 Customer Churn Analysis – Telecom Dataset  

_Predicting customer churn and identifying risk factors in a telecom company using Python and machine learning._  

---

## 📌 Table of Contents  
- [Overview](#overview)  
- [Business Problem](#business-problem)  
- [Dataset](#dataset)  
- [Tools & Technologies](#tools--technologies)  
- [Project Structure](#project-structure)  
- [Data Cleaning & Preparation](#data-cleaning--preparation)  
- [Exploratory Data Analysis (EDA)](#exploratory-data-analysis-eda)  
- [Modeling & Evaluation](#modeling--evaluation)  
- [Research Questions & Key Findings](#research-questions--key-findings)  
- [Dashboard](#dashboard)  
- [How to Run This Project](#how-to-run-this-project)  
- [Final Recommendations](#final-recommendations)  
- [Author & Contact](#author--contact)  

---

## Overview  
This project analyzes **customer churn in telecom services**, focusing on identifying high-risk customers and factors that influence their decision to leave. Using **EDA and predictive modeling**, the project aims to provide actionable strategies to **retain customers and reduce churn rate**.  

---

## Business Problem  
- What is the **overall churn rate**?  
- Which features (contracts, services, demographics) drive churn?  
- Can we build a **predictive model** to classify at-risk customers?  
- What **strategies** can reduce churn?  

---

## Dataset  
- `telecom_churn.csv` containing:  
  - **Demographics**: Gender, Age, Tenure  
  - **Account Info**: Contract type, Monthly charges, Payment method  
  - **Services**: Internet, Streaming, Phone  
  - **Churn**: Yes/No  

---

## Tools & Technologies  
- **Python**: Pandas, Matplotlib, Seaborn, Scikit-learn  
- **Machine Learning**: Logistic Regression, Random Forest  
- **Jupyter Notebook**  

---

## Project Structure  
```
customer-churn-analysis/
│
├── README.md
├── notebooks/
│   └── churn_analysis.ipynb
├── data/
│   └── telecom_churn.csv
└── models/
    ├── logistic_regression.pkl
    └── random_forest.pkl
```

---

## Data Cleaning & Preparation  
- Removed rows with missing values in tenure and charges  
- Encoded categorical variables (e.g., contract type, gender)  
- Scaled numerical features (Monthly Charges, Tenure)  
- Balanced dataset using SMOTE for training  

---

## Exploratory Data Analysis (EDA)  
- **Churn Rate**: ~26% of customers left  
- **High-Risk Groups**:  
  - Month-to-month contracts → 45% churn rate  
  - Fiber optic internet users churn more than DSL users  
  - Customers with high monthly charges are more likely to churn  
- **Tenure Impact**: Customers with tenure < 1 year churn significantly more  

---

## Modeling & Evaluation  
- **Logistic Regression** → Accuracy: 80%, ROC-AUC: 0.82  
- **Random Forest** → Accuracy: 85%, ROC-AUC: 0.87  
- Feature Importance (Random Forest):  
  1. Contract Type  
  2. Monthly Charges  
  3. Tenure  

---

## Research Questions & Key Findings  
1. **What drives churn?** → Short contracts, high bills, and low tenure  
2. **Who churns the most?** → Month-to-month contract customers  
3. **Which features matter most?** → Contract type, monthly charges, tenure  

---

## Dashboard  
- Churn breakdown by contract type (Bar Chart)  
- Monthly charges distribution (Box Plot)  
- Model prediction results  

---

## How to Run This Project  
```bash
git clone https://github.com/AmulyaKadam/Data_Analysis_projects.git
cd Customer_Churn_Analysis
pip install -r requirements.txt
jupyter notebook
```

---

## Final Recommendations  
- Encourage customers to switch to **long-term contracts** with incentives  
- Provide discounts or flexible plans for **high-charge customers**  
- Implement **early engagement campaigns** for new customers (<1 year tenure)  
- Improve service reliability for fiber optic internet users  

---

## Author & Contact  
**Amulya Kadam**  
📧 Email: <your-email-here>  
🔗 [LinkedIn](https://www.linkedin.com/)  
