# 📊 E-commerce Sales Analysis: A SQL Portfolio Project

## 📌 Project Overview

This project demonstrates how SQL can be used to analyze sales data from
an e-commerce business. The analysis answers real-world business
questions related to customer behavior, product performance, revenue
trends, and customer segmentation.

The goal of this project is to showcase practical SQL skills commonly
required for Data Analyst roles.



## 🛠️ Technologies Used

-   MySQL
-   SQL Workbench
-   GitHub

## 📂 Dataset

The project uses three related tables.

### `portfolio_customers`

Contains customer information.

  Column
 
  customer_id
  customer_name
  city
  signup_date

### `portfolio_products`

Contains product information.

  Column

  product_id
  product_name
  category
  unit_price

### `portfolio_orders`

Contains transactional sales data.

  Column

  order_id
  order_date
  customer_id
  product_id
  quantity
  total_amount



# 📈 Business Questions Solved

## 1. Top 5 Customers by Revenue

**Skills Used** - JOIN - SUM() - GROUP BY - ORDER BY - LIMIT

**Business Insight** Identifies the highest-value customers for loyalty
programs.

## 2. Most Popular Product

**Skills Used** - JOIN - SUM() - GROUP BY

**Business Insight** Shows which products sell the most.

## 3. Revenue by City

**Skills Used** - JOIN - GROUP BY - SUM()

**Business Insight** Identifies cities generating the most revenue.

## 4. Customers Who Never Purchased


**Skills Used** - Subquery - NOT IN

**Business Insight** Useful for customer re-engagement campaigns.


## 5. Customer Spending Ranking

**Skills Used** - Window Function - RANK()

**Business Insight** Ranks customers by total spending.


## 6. Customer Segmentation

**Skills Used** - CASE - SUM()

Segments customers into: - VIP - Regular - Low Value


## 7. Products Selling Above Average

**Skills Used** - HAVING - Subquery - AVG()

**Business Insight** Finds products outperforming the average.


## 8. Monthly Sales Trend

**Skills Used** - DATE_FORMAT() - SUM() - GROUP BY

**Business Insight** Tracks monthly revenue growth.


SQL Concepts Demonstrated

-   SELECT
-   WHERE
-   ORDER BY
-   LIMIT
-   INNER JOIN
-   GROUP BY
-   HAVING
-   Aggregate Functions
-   CASE Statements
-   Subqueries
-   Window Functions
-   RANK()
-   DATE_FORMAT()



Repository Structure

├── README.md
├── ecommerce_sales_analysis.sql
├── portfolio_customers.csv
├── portfolio_products.csv
├── portfolio_orders.csv


How to Run

1.  Create a database named `portfolio_project`.
2.  Import the three CSV files.
3.  Run the SQL script.
4.  Explore the analysis and results.


 Skills Demonstrated

-   SQL Data Analysis
-   Data Cleaning
-   Joins
-   Window Functions
-   Customer Segmentation
-   Business Intelligence
-   Sales Analytics
-   Query Optimization


 Connect With Me

**Victor Weka**

-   LinkedIn: *(www.linkedin.com/in/weka-victor-963763224)*
-   GitHub: *([)](https://github.com/Wekavic/ecommerce-sales-analysis-sql/tree/main)*
