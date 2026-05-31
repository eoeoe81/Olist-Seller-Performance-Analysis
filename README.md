# Olist-Seller-Performance-Analysis
SQL (CTE, Window Functions, Cohort Analysis) + Excel dashboard analyzing seller performance on Olist, Brazil's largest e-commerce platform. Includes revenue tier segmentation, monthly trend with LAG, and seller retention cohort heatmap.

## Overview
Analysis of Brazil's largest e-commerce platform (Olist) to identify key seller success factors.

## Business Questions
1. Which sellers are most valuable by revenue & order volume?
2. How do revenue and order trends change over time?
3. Which regions produce the best-performing sellers?
4. Which product categories dominate platform sales?

## Tools
- SQL (SQLite via DB Browser for SQLite)
- Microsoft Excel (Power Query, Pivot Table, Pivot Chart)

## Key Findings
- Top Tier sellers (25% of all sellers) generate 86% of total revenue
- São Paulo dominates with BRL 875M — 6x second-ranked state
- Revenue grew 8x from Jan 2017 to Nov 2017 peak
- Early seller cohorts (Jan–Mar 2017) show strongest long-term retention
- Health & Beauty leads revenue despite ranking 2nd in order volume

## Dataset
Olist E-Commerce Public Dataset (Kaggle) · Period: Jan 2017 – Aug 2018
Tables used: sellers, orders, order_items, products, customers, order_payments

## Folder Structure
portfolio-2-olist/
├── sql_queries/        → 5 .sql files
├── sql_results/        → 5 CSV hasil query
├── excel/              → olist_seller_analysis.xlsx
├── report/             → Olist_Seller_Analysis.pdf
└── README.md
