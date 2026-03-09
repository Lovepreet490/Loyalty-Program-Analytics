
# Loyalty Program Analytics & Reward Optimization

## Project Overview
This project analyzes loyalty program transaction data to identify sales trends, regional performance, and optimize reward structures. Using SQL, Python, and Machine Learning, the project forecasts product demand and recommends optimized **Slab thresholds** and **DBT (Direct Benefit Transfer) budgets** for the next quarter.

The insights are visualized through an interactive **Power BI dashboard**.

---

## Tools & Technologies
- SQL (MySQL) – Data extraction and analysis
- Python – Data cleaning and machine learning
- Pandas & Scikit-learn – Data processing and forecasting
- Power BI – Interactive dashboard and visualization
- Machine Learning (Linear Regression) – Demand forecasting

---

## Project Workflow

SQL Database
      ↓
Data Extraction using SQL Queries
      ↓
Python Data Processing & Automation
      ↓
Machine Learning Model (Demand Forecast)
      ↓
Slab & DBT Optimization
      ↓
Power BI Dashboard Visualization

---

## SQL Analysis
SQL queries were used to analyze key business insights such as:

- Top Dealers by Sales
- Top Products by Revenue
- Monthly & Daily Sales Trends
- Painter Participation Analysis
- Category-wise Sales Performance
- Dealer Performance by State
- Product Ranking using Window Functions

---

## Machine Learning Models

### Slab Optimization Model
A machine learning model predicts **next quarter product demand** and recommends optimized **Slab thresholds**.

Outputs:
- Predicted Q4 Product Sales
- Suggested Slab Levels

### DBT Optimization Model
The model estimates the **DBT budget required for the next quarter** based on predicted product demand.

Outputs:
- Predicted Q4 Volume
- Estimated DBT Amount

---

## Power BI Dashboard

The dashboard consists of four main pages:

### 1. Sales Overview
- Total Sales
- Total Volume
- Active Painters
- Total Dealers
- Monthly Sales Trend
- Top Products by Revenue

### 2. Regional Sales Performance
- Sales by State (Map)
- Zone-wise Sales Distribution
- Top Dealer Performance
- Dealer Sales Table

### 3. Slab Optimization (Machine Learning)
- Predicted Q4 Product Sales
- Suggested Slab Threshold
- Sales vs Slab Comparison

### 4. DBT Optimization (Machine Learning)
- Predicted Q4 Volume by Product
- Estimated DBT Budget
- Volume vs DBT Analysis

---

## Project Structure

Loyalty-Program-Analytics
│
├── data
│   ├── slab_forecast.csv
│   └── dbt_forecast.csv
│
├── notebooks
│   ├── ML_NPP.ipynb
│   └── NPP_Automation.ipynb
│
├── sql
│   └── SQL_Query.sql
│
├── dashboard
│   └── NPP_Dashboard.pbix
│
└── README.md

---

## Key Business Insights
- Identify high-performing products and dealers
- Analyze regional sales performance
- Forecast next quarter product demand
- Optimize loyalty reward slabs
- Estimate DBT budget requirements

---

## Future Improvements
- Implement advanced ML models (Random Forest / XGBoost)
- Add automated data pipelines
- Deploy dashboards to Power BI Service
