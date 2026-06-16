

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
