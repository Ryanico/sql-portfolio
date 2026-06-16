

# World Layoffs Data Cleaning Project

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

# World Layoffs Exploratory Data Analysis

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
