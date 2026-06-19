# SQL Portfolio

Welcome to my SQL portfolio repository. This repository contains my SQL practice, exercises, and projects completed while learning database management, querying, and data analysis using SQL.

The goal of this portfolio is to demonstrate my understanding of SQL concepts from beginner to advanced level through practical examples and hands-on exercises.

---

# Repository Structure

```text
sql-portfolio/
│
├── Parks_and_rec/
│   └── Parks_and_Rec_Create_db.sql
│
├── 1. Select Statement.sql
├── 2. Where Clause Statement.sql
├── 3. Group By + Order By.sql
├── 4. Having vs Where Clause.sql
├── 5. Limit & Aliasing Clause.sql
├── 6. Joins Clauses.sql
├── 7. Union Clause.sql
├── 8. String Functions.sql
├── 9. Case Statement.sql
├── 10. Subqueries Clause.sql
├── 11. Window Functions.sql
├── 12. CTEs Clause (Statement).sql
├── 13. Temporary Tables Clause (Statement).sql
├── 14. Stored Procedures.sql
├── 15. Triggers and Events.sql
│
├── Synthetic_sales_data/
│   ├── Product_sales_Project.sql
│   ├── Synthetic_sales_data_db.sql
│   └── sales_data.csv
│
├── world_layoffs/
│   ├── Data Cleaning Project.sql
│   ├── Exploratory Data Analysis.sql
│   ├── World_layoffs_db.sql
│   └── layoffs.csv
│
│
├── Superstore_sales/
│   ├── Superstore_sales_data.csv          # Raw dataset of transactional sales records
│   ├── Superstore_sales_db.sql            # Database schema creation script
│   └── Superstore_sales_project.sql       # SQL queries and analysis project
│
│
└── README.md
```

---

# Dataset

This portfolio uses the Parks and Recreation sample database.

# 1. Parks and Rec Create Project READMe

File:
- `1. Parks_and_Rec_Create_db.sql`

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
```

# SQL Portfolio Project READMEs

---

# 2. World Layoffs Data Cleaning Project README

## Project Title

World Layoffs Data Cleaning in MySQL

---

## Project Overview

This project focuses on cleaning and preparing a global layoffs dataset using MySQL. The goal of the project was to transform raw and inconsistent data into a structured, standardized, and analysis-ready dataset.

The project demonstrates practical SQL data cleaning techniques commonly used in real-world data analytics and data engineering workflows.

---

## Objectives

The main objectives of this project were:

* Remove duplicate records
* Standardize inconsistent data
* Handle null and blank values
* Convert date formats into proper SQL DATE datatype
* Prepare the dataset for exploratory data analysis
* Improve overall data quality and reliability

---

## SQL Concepts & Techniques Used

### Data Cleaning

* Duplicate removal
* Null value handling
* Data standardization
* String trimming
* Date conversion
* Table restructuring

### SQL Functions & Features

* `ROW_NUMBER()` window function
* `CTEs (Common Table Expressions)`
* `TRIM()`
* `STR_TO_DATE()`
* `ALTER TABLE`
* `DELETE`
* `UPDATE`
* `JOIN`
* `PARTITION BY`

---

## Key Tasks Performed

### 1. Removing Duplicates

Used the `ROW_NUMBER()` window function to identify duplicate records based on multiple columns.

```sql
ROW_NUMBER() OVER(
PARTITION BY company, location, industry,
total_laid_off, percentage_laid_off,
`date`, stage, country, funds_raised_millions
)
```

Duplicate rows were isolated and removed from the staging table.

---

### 2. Standardizing Data

Several inconsistencies in the dataset were cleaned:

* Removed extra spaces using `TRIM()`
* Standardized industry names such as:

  * `Crypto Currency`
  * `CryptoCurrency`
  * `Crypto`

into a single value:

```sql
Crypto
```

* Standardized country names
* Fixed formatting inconsistencies

---

### 3. Converting Dates

The original date column was stored as text.

The project converted it into a proper SQL `DATE` datatype using:

```sql
STR_TO_DATE(`date`, '%m/%d/%Y')
```

Then modified the column datatype:

```sql
ALTER TABLE layoffs_staging2
MODIFY COLUMN `date` DATE;
```

---

### 4. Handling Null Values

The project:

* Identified blank and null fields
* Filled missing industry values using self joins
* Removed records containing unusable null data

---

## Dataset Information

The dataset contains information about:

* Company layoffs
* Industries
* Locations
* Company stages
* Total employees laid off
* Percentage laid off
* Funding raised
* Dates of layoffs

---

## Skills Demonstrated

This project demonstrates:

* Data cleaning skills
* SQL problem-solving
* Window functions
* Data transformation
* Analytical thinking
* Real-world ETL preparation

---

## Business Value

Clean data is critical for:

* Accurate reporting
* Reliable analysis
* Business intelligence dashboards
* Trend analysis
* Decision making

This project simulates the real-world preprocessing stage performed before analytics and visualization.

---

## Tools Used

* MySQL
* SQL Workbench

---

## Outcome

The final dataset became:

* cleaner
* standardized
* analysis-ready
* more reliable for exploratory data analysis

---

# 3. World Layoffs Exploratory Data Analysis README

## Project Title

World Layoffs Exploratory Data Analysis Using SQL

---

## Project Overview

This project performs exploratory data analysis (EDA) on a global layoffs dataset using MySQL.

The goal was to analyze layoffs trends across companies, industries, years, and time periods in order to uncover business insights and identify large-scale workforce reduction patterns.

---

## Objectives

The project aimed to:

* Analyze layoffs trends over time
* Identify companies with the largest layoffs
* Discover yearly layoff patterns
* Track rolling layoff totals
* Rank companies by layoffs
* Explore workforce reduction trends globally

---

## SQL Concepts & Techniques Used

### SQL Features

* Aggregations
* Window functions
* CTEs
* Ranking functions
* Date functions
* Grouping and filtering

### Functions Used

* `SUM()`
* `MAX()`
* `MIN()`
* `YEAR()`
* `DENSE_RANK()`
* `OVER()`
* `GROUP BY`
* `ORDER BY`

---

## Key Analysis Performed

### 1. Maximum Layoffs Analysis

Identified:

* highest layoffs recorded
* companies with complete workforce reductions

---

### 2. Company Layoff Analysis

Calculated total layoffs per company.

```sql
SELECT company, SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY company
```

This helped identify the companies most affected.

---

### 3. Time-Series Analysis

Analyzed layoffs over time using:

```sql
YEAR(`date`)
```

to identify yearly workforce reduction trends.

---

### 4. Rolling Layoff Totals

Built rolling cumulative layoff calculations using window functions.

```sql
SUM(total_off) OVER(ORDER BY `MONTH`)
```

This enabled trend tracking across time.

---

### 5. Company Ranking Analysis

Used:

```sql
DENSE_RANK()
```

to rank companies with the highest layoffs per year.

---

## Insights Explored

The analysis helps answer questions such as:

* Which companies laid off the most employees?
* Which years experienced the largest layoffs?
* Which industries were heavily impacted?
* How did layoffs evolve over time?
* Which companies consistently ranked among the highest layoffs?

---

## Skills Demonstrated

This project demonstrates:

* Exploratory data analysis
* Time-series analysis
* Window functions
* Business intelligence thinking
* Ranking and trend analysis
* SQL analytics workflows

---

## Business Value

The project simulates real-world business analytics by:

* identifying economic trends
* tracking workforce reductions
* analyzing industry impact
* uncovering large-scale organizational changes

---

## Tools Used

* MySQL
* SQL Workbench

---

## Outcome

The project successfully transformed raw layoffs data into meaningful analytical insights using advanced SQL analysis techniques.

---

# 4. Product Sales Analysis Project README

## Project Title

Product Sales Analysis Using SQL

---

## Project Overview

This project focuses on analyzing a synthetic sales dataset using MySQL.

The project explores sales performance, customer behavior, profitability, revenue trends, regional performance, and product analytics through SQL queries.

The analysis simulates real-world business intelligence and sales reporting workflows.

---

## Objectives

The main objectives of this project were:

* Analyze sales performance
* Track revenue trends
* Evaluate profitability
* Identify top-performing products
* Analyze customer purchasing behavior
* Explore regional sales performance
* Build analytical SQL skills

---

## Dataset Overview

The dataset contains information related to:

* Product sales
* Product categories
* Sales representatives
* Customer types
* Discounts
* Regions
* Payment methods
* Sales channels
* Revenue and costs

---

## SQL Concepts & Techniques Used

### SQL Fundamentals

* `SELECT`
* `WHERE`
* `ORDER BY`
* `GROUP BY`
* `HAVING`
* `LIMIT`

### Analytical SQL

* Aggregations
* Subqueries
* CASE statements
* Date analysis
* Profit calculations
* Revenue analysis
* Business KPI calculations

### Functions Used

* `SUM()`
* `AVG()`
* `COUNT()`
* `MIN()`
* `MAX()`
* `SUBSTRING()`
* `CASE`

---

## Key Analysis Performed

### 1. Sales Exploration

Analyzed:

* total sales records
* sales by region
* sales by payment method
* online vs offline sales
* high-value transactions

---

### 2. Revenue Analysis

Calculated:

* total revenue
* monthly revenue
* regional revenue
* category revenue
* highest sales transactions

---

### 3. Profitability Analysis

Calculated profits using:

```sql
Quantity_Sold * (Unit_Price - Unit_Cost)
```

to determine:

* profitable categories
* high-performing products
* profit trends

---

### 4. Customer Analysis

Explored:

* returning customers
* customer purchasing behavior
* discount trends
* customer segmentation concepts

---

### 5. Sales Representative Performance

Analyzed:

* top-performing sales reps
* sales generated per representative
* sales rankings

---

### 6. Time-Series Analysis

Used date analysis to identify:

* monthly sales trends
* seasonal performance
* quarterly sales patterns
* revenue fluctuations over time

---

### 7. CASE Statement Analysis

Implemented conditional logic to classify:

* sales categories
* discount categories
* transaction performance levels

---

## Example Business Questions Solved

* Which region generates the highest revenue?
* Which products are most profitable?
* Which sales representatives perform best?
* How do discounts affect sales?
* What are the monthly sales trends?
* Which customer types generate more revenue?

---

## Skills Demonstrated

This project demonstrates:

* SQL analytics
* Business intelligence thinking
* KPI reporting
* Profitability analysis
* Sales analytics
* Time-series analysis
* Data exploration
* Real-world reporting logic

---

## Business Value

The project simulates real business reporting scenarios by helping businesses:

* identify profitable products
* improve sales strategies
* analyze regional performance
* track customer behavior
* monitor revenue growth

---

## Tools Used

* MySQL
* SQL Workbench

---

## Outcome

The project successfully demonstrates how SQL can be used to perform end-to-end sales analysis and generate actionable business insights.


# Purpose of This Portfolio

This repository documents my SQL learning journey and demonstrates practical database querying and data analysis skills through hands-on exercises and projects.

The portfolio will continue to grow as I learn more advanced SQL concepts and real-world data analysis techniques.
