# Olist-Seller-Performance-Analysis
SQL (CTE, Window Functions, Cohort Analysis) + Excel dashboard analyzing seller performance on Olist, Brazil's largest e-commerce platform. Includes revenue tier segmentation, monthly trend with LAG, and seller retention cohort heatmap.

## Overview
Analysis of Brazil's largest e-commerce platform (Olist) to identify key seller success factors. **[View Full Presentation (PDF)](report/Olist-Seller.pdf)**


## Business Questions
1. Which sellers are most valuable by revenue & order volume?
2. How do revenue and order trends change over time?
3. Which regions produce the best-performing sellers?
4. Which product categories dominate platform sales?

## Tools
- SQL (SQLite via DB Browser for SQLite)
- Microsoft Excel (Power Query, Pivot Table, Pivot Chart)

## Key Findings
- Top Tier sellers (25% of all sellers) generate 86.8% of total revenue
- São Paulo dominates with BRL 8.51M — nearly 7x the second-ranked state (PR)
- Revenue grew 7.5x from Jan 2017 to Aug 2018, peaking at BRL 987,765.37 in Nov 2017
- Early seller cohorts (Jan–Mar 2017) show strongest long-term retention
- Health & Beauty leads revenue despite ranking 2nd in order volume

## Dataset
Olist E-Commerce Public Dataset (Kaggle) · Period: Jan 2017 – Aug 2018 [Olist E-Commerce Public Dataset]([https://www.kaggle.com/datasets/pratyushpuri/mobile-game-in-app-purchases-dataset-2025](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce))
Tables used: sellers, orders, order_items, products, customers, order_payments
Note: product category analysis excludes rows with null/blank category values.

## Folder Structure
```
Olist-Seller-Performance-Analysis/
├── dataset/
│   ├── olist_order_payments_dataset.csv
│   ├── olist_order_reviews_dataset.csv
│   ├── olist_products_dataset.csv
│   ├── olist_order_items.csv
│   ├── olist_orders.csv
│   ├── olist_sellers.csv
│   └── olist_customers_dataset.csv
├── sql_queries/        → 6 .sql files
├── sql_results/        → 6 CSV results query
├── excel/              → olist_seller_analysis.xlsx
├── report/             → Olist_Seller_Analysis.pdf
└── README.md
```

## About

**Jessica Leo**
Junior Data Analyst | Information Systems Student
[LinkedIn](https://www.linkedin.com/in/jessicaleooo)
