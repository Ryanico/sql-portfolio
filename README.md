# SQL Portfolio

Welcome to my SQL portfolio repository. This repository contains my SQL practice, exercises, and projects completed while learning database management, querying, and data analysis using SQL.

The goal of this portfolio is to demonstrate my understanding of SQL concepts from beginner to advanced level through practical examples and hands-on exercises.

---

# Repository Structure

```text
sql-portfolio/
│
├── datasets/
│   └── Parks_and_Rec_Create_db.sql
│
├── 1. Select Statement.sql
├── 2. Where Clause Statement.sql
├── 3. Group by + Order by.sql
├── 4. Having vs Where clause.sql
├── 5. Limit & Aliasing clause.sql
├── 6. Joins Clauses.sql
├── 7. Union clause.sql
├── 8. String Functions.sql
├── 9. Case statement.sql
├── 10. Subqueries clause.sql
├── 11. Window functions.sql
├── 12. CTEs Clause(Statement).sql
├── 13. Temporary Tables Clause(Statement).sql
├── 14. Stored Procedures.sql
├── 15. Triggers and Events.sql
│
└── README.md
```

---

# Dataset

This portfolio uses the Parks and Recreation sample database.

File:
- `Parks_and_Rec_Create_db.sql`

The database contains sample employee and department data used for practicing SQL queries and database operations.

---

# Topics Covered

## 1. Select Statements
Introduction to retrieving data from database tables using:
- `SELECT`
- `DISTINCT`
- selecting specific columns
- retrieving all records

Skills demonstrated:
- Basic querying
- Data retrieval

---

## 2. WHERE Clause
Filtering records using conditions.

Concepts covered:
- `WHERE`
- comparison operators
- logical operators (`AND`, `OR`, `NOT`)
- filtering NULL values

Skills demonstrated:
- Conditional filtering
- Data selection

---

## 3. GROUP BY + ORDER BY
Grouping and sorting data for analysis.

Concepts covered:
- `GROUP BY`
- `ORDER BY`
- aggregate functions:
  - `COUNT()`
  - `SUM()`
  - `AVG()`
  - `MIN()`
  - `MAX()`

Skills demonstrated:
- Data aggregation
- Sorting query results

---

## 4. HAVING vs WHERE Clause
Understanding the difference between filtering before and after aggregation.

Concepts covered:
- `WHERE`
- `HAVING`
- aggregate filtering

Skills demonstrated:
- Query optimization
- Aggregated filtering

---

## 5. LIMIT & Aliasing
Limiting query results and renaming columns.

Concepts covered:
- `LIMIT`
- `AS` aliasing

Skills demonstrated:
- Cleaner query outputs
- Result customization

---

## 6. JOIN Clauses
Combining data from multiple tables.

Concepts covered:
- `INNER JOIN`
- `LEFT JOIN`
- `RIGHT JOIN`
- `SELF JOIN`

Skills demonstrated:
- Relational database querying
- Multi-table analysis

---

## 7. UNION Clause
Combining query results into a single output.

Concepts covered:
- `UNION`
- `UNION ALL`

Skills demonstrated:
- Merging datasets
- Combining multiple queries

---

## 8. String Functions
Manipulating and cleaning text data.

Concepts covered:
- `LENGTH()`
- `UPPER()`
- `LOWER()`
- `TRIM()`
- `SUBSTRING()`
- `REPLACE()`

Skills demonstrated:
- Text processing
- Data cleaning

---

## 9. CASE Statements
Creating conditional logic inside SQL queries.

Concepts covered:
- `CASE WHEN`

Skills demonstrated:
- Conditional transformations
- Categorizing data

---

## 10. Subqueries
Using queries inside other queries.

Concepts covered:
- nested queries
- correlated subqueries

Skills demonstrated:
- Advanced querying
- Dynamic filtering

---

## 11. Window Functions
Performing calculations across rows without collapsing data.

Concepts covered:
- `ROW_NUMBER()`
- `RANK()`
- `DENSE_RANK()`
- `PARTITION BY`

Skills demonstrated:
- Analytical SQL
- Ranking and partitioning

---

## 12. Common Table Expressions (CTEs)
Simplifying complex queries using temporary query blocks.

Concepts covered:
- `WITH` clause
- reusable query expressions

Skills demonstrated:
- Query readability
- Complex SQL structuring

---

## 13. Temporary Tables
Creating temporary tables for intermediate calculations.

Concepts covered:
- `TEMP TABLE`
- temporary data storage

Skills demonstrated:
- Query organization
- Intermediate processing

---

## 14. Stored Procedures
Creating reusable SQL procedures.

Concepts covered:
- `CREATE PROCEDURE`
- parameterized procedures

Skills demonstrated:
- SQL automation
- Reusable database logic

---

## 15. Triggers and Events
Automating database actions.

Concepts covered:
- `TRIGGER`
- `EVENT`

Skills demonstrated:
- Database automation
- Event-driven SQL

---

# Tools Used

- MySQL
- MySQL Workbench
- GitHub

---

# Product Sales SQL Analysis Project

## Overview
This project focuses on analyzing product sales data using SQL to uncover meaningful business insights and performance trends. The analysis explores sales performance, revenue growth, customer purchasing behavior, and product trends through a series of SQL queries.

The project demonstrates both fundamental and advanced SQL concepts commonly used in real-world data analysis.

---

## Objectives
The main goals of this project are to:

- Analyze product sales performance
- Identify top-performing products
- Measure revenue trends over time
- Calculate month-over-month sales growth
- Explore customer purchasing behavior
- Practice real-world SQL analysis techniques

---

## Dataset
The dataset contains product sales information including:

- Product details
- Sales amounts
- Transaction dates
- Customer information
- Sales performance metrics

The data is used to simulate real business reporting and analytical scenarios.

---

## SQL Concepts Used

This project demonstrates:

- SELECT statements
- Filtering with WHERE
- GROUP BY and aggregation
- ORDER BY sorting
- JOINS
- CASE statements
- Subqueries
- Common Table Expressions (CTEs)
- Window Functions
- LAG() for trend analysis
- Revenue calculations

---

## Key Analysis Performed

### 1. Sales Performance Analysis
- Total revenue generated
- Top-selling products
- Best-performing categories

### 2. Time-Series Analysis
- Monthly sales trends
- Month-over-Month (MoM) growth analysis
- Revenue comparisons across periods

### 3. Customer Analysis
- Customer purchasing behavior
- High-value customers
- Spending patterns

### 4. Advanced SQL Analytics
- Ranking products and sales
- Comparing current and previous month performance
- Using window functions for trend tracking

---

## Example Business Questions Answered

- Which products generate the highest revenue?
- How do monthly sales compare over time?
- What is the month-over-month growth percentage?
- Which customers contribute the most revenue?
- What are the overall sales trends?

---

## Skills Demonstrated

- SQL querying and filtering
- Data aggregation and summarization
- Business performance analysis
- Time-series analysis
- Trend analysis
- Window functions and analytical SQL
- Data storytelling using SQL

---

## Project Structure

```text
Product_Sales_Project
│
├── Product_sales_Project.sql
├── README.md
└── dataset



# Purpose of This Portfolio

This repository documents my SQL learning journey and demonstrates practical database querying and data analysis skills through hands-on exercises and projects.

The portfolio will continue to grow as I learn more advanced SQL concepts and real-world data analysis techniques.
