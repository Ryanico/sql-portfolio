-- Data Exploratory
SELECT * 
FROM superstore_sales_data;

SELECT `Customer Name`, Region, Sales
FROM superstore_sales_data;

SELECT *
FROM superstore_sales_data
WHERE Region = 'West';

SELECT *
FROM superstore_sales_data
WHERE Discount > 0.20;

SELECT COUNT(*) AS total_orders
FROM superstore_sales_data;

SELECT SUM(Sales) AS total_sales
FROM superstore_sales_data;

SELECT AVG(Profit) as avg_profit
FROM superstore_sales_data;

SELECT Category
FROM superstore_sales_data
GROUP BY Category;

SELECT *
FROM superstore_sales_data
ORDER BY Sales DESC
LIMIT 10;

SELECT Region, COUNT(`Order ID`) AS region_order_count
FROM superstore_sales_data
GROUP BY Region;

-- Find the total sales and profit generated per category.
SELECT Category, SUM(Sales) AS total_sales, SUM(Profit) AS total_profit
FROM superstore_sales_data
GROUP BY Category;

-- Determine which state generated the highest total sales.
SELECT State, SUM(Sales) AS total_sales
FROM superstore_sales_data
GROUP BY State
ORDER BY total_sales DESC
;

-- Find customers whose total purchases exceed 5000.
SELECT `Customer Name`, Sales AS total_purchases
FROM superstore_sales_data
WHERE Sales > 5000
;

-- Calculate the average discount given per region.
SELECT Region, AVG(Discount) as avg_discount
FROM superstore_sales_data
GROUP BY Region;

-- Find the top 5 most profitable products.
SELECT `Product Name`, SUM(Profit) AS total_profit
FROM superstore_sales_data
GROUP BY `Product Name`
ORDER BY total_profit DESC
LIMIT 5
;

-- Rank regions by total profit using window functions.
SELECT Region, SUM(Profit) AS total_profit,
RANK() OVER(ORDER BY SUM(Profit) DESC) AS ranking
FROM superstore_sales_data
GROUP BY Region;

-- Find monthly sales trends using the Order Date column.
SELECT MONTH(STR_TO_DATE(`Order Date`, '%m/%d/%Y')) AS sales_month, SUM(Sales) as monthly_sales
FROM superstore_sales_data
GROUP BY MONTH(STR_TO_DATE(`Order Date`, '%m/%d/%Y'))
ORDER BY monthly_sales;

-- Show products with sales above the average sales value.
SELECT *
FROM superstore_sales_data
WHERE Sales > (SELECT AVG(Sales) FROM superstore_sales_data)
;

-- Calculate profit margin for each category.
SELECT Category, SUM(Sales) AS total_sales, 
SUM(Profit) AS total_profit, (SUM(Profit) / SUM(Sales) * 100) AS profit_margin
FROM superstore_sales_data
GROUP BY Category;

-- Find the sales representatives/customers with the highest number of orders.
SELECT `Customer Name`, COUNT(`Order ID`) AS num_of_orders
FROM superstore_sales_data
GROUP BY `Customer Name`
;

-- Find month-over-month sales growth using window functions.
WITH monthly_sales AS 
(
    SELECT
        YEAR(STR_TO_DATE(`Order Date`, '%m/%d/%Y')) AS sales_year,
        MONTH(STR_TO_DATE(`Order Date`, '%m/%d/%Y')) AS sales_month,
        SUM(Sales) AS total_sales

    FROM superstore_sales_data
    GROUP BY YEAR(STR_TO_DATE(`Order Date`, '%m/%d/%Y')),
    MONTH(STR_TO_DATE(`Order Date`, '%m/%d/%Y'))
)
SELECT
    sales_year,
    sales_month,
    total_sales,
    LAG(total_sales) OVER (ORDER BY sales_year, sales_month) AS previous_month_sales,
    (
        (total_sales -
        LAG(total_sales) OVER (ORDER BY sales_year, sales_month))
        /
        LAG(total_sales) OVER (
            ORDER BY sales_year, sales_month
        )
    ) * 100 AS mom_growth_percentage
FROM monthly_sales;

-- Identify seasonal sales trends across months and quarters.
	-- Monthly trend by Year
SELECT 
		YEAR(STR_TO_DATE(`Order Date`, '%m/%d/%Y')) AS sales_year,
        MONTH(STR_TO_DATE(`Order Date`, '%m/%d/%Y')) AS sales_month,
        SUM(Sales) AS total_sales
FROM superstore_sales_data
GROUP BY YEAR(STR_TO_DATE(`Order Date`, '%m/%d/%Y')),
        MONTH(STR_TO_DATE(`Order Date`, '%m/%d/%Y'))
ORDER BY sales_year, 
		 sales_month
;

	-- Quarterly Trend by Year
SELECT
		YEAR(STR_TO_DATE(`Order Date`, '%m/%d/%Y')) AS `Year`,
		QUARTER(STR_TO_DATE(`Order Date`, '%m/%d/%Y')) AS sales_quarter,
        SUM(Sales) AS total_sales
FROM superstore_sales_data
GROUP BY YEAR(STR_TO_DATE(`Order Date`, '%m/%d/%Y')),
		 QUARTER(STR_TO_DATE(`Order Date`, '%m/%d/%Y'))
ORDER BY `Year`, sales_quarter
;

-- Build a customer segmentation query based on spending behavior.
SELECT *
FROM
(
SELECT Segment, SUM(Sales) as spend
FROM superstore_sales_data
GROUP BY Segment
) Customer_segmentation
;

-- Find the most profitable sub-category in each region.
SELECT *
FROM
(
SELECT Region, `Sub-Category`, 
SUM(Profit), RANK() OVER(PARTITION BY Region ORDER BY SUM(Profit) DESC) AS ranking
FROM superstore_sales_data
GROUP BY Region, `Sub-Category`
)profitable_sub_category
WHERE ranking = 1
;

-- Calculate rolling average sales over 3 months.
WITH monthly_sales AS (

    SELECT
		YEAR(STR_TO_DATE(`Order Date`, '%m/%d/%Y')) AS `Year`,
        MONTH(STR_TO_DATE(`Order Date`, '%m/%d/%Y')) AS sales_month,
        SUM(Sales) AS total_sales

    FROM superstore_sales_data
    GROUP BY YEAR(STR_TO_DATE(`Order Date`, '%m/%d/%Y')),
			 MONTH(STR_TO_DATE(`Order Date`, '%m/%d/%Y'))
)

SELECT
	`Year`,
    sales_month,
    total_sales,

    AVG(total_sales) OVER (
        ORDER BY `Year`, sales_month
        ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
    ) AS rolling_avg_3_months

FROM monthly_sales;

-- Determine which products consistently generate losses.
SELECT `Product Name`, SUM(Profit) as profit
FROM superstore_sales_data
WHERE profit < 0
GROUP BY `Product Name`
;

-- Find the correlation between discount and profit.
SELECT Discount,
       AVG(Profit) AS avg_profit
FROM superstore_sales_data
GROUP BY Discount
ORDER BY Discount;

-- Build a complete sales dashboard query using multiple CTEs.
WITH Total_sales AS
(
SELECT SUM(Sales) AS total_sales
FROM superstore_sales_data
),
Total_profit AS
(
SELECT SUM(Profit) total_profit
FROM superstore_sales_data
),
Top_region AS
(
SELECT Region, SUM(Sales) region_sales
FROM superstore_sales_data
GROUP BY Region
ORDER BY region_sales DESC
LIMIT 1
),
Best_customer AS
(
SELECT `Customer Name`, SUM(Sales) AS customer_purchase
FROM superstore_sales_data
Group BY `Customer Name`
ORDER BY customer_purchase DESC
LIMIT 1
)
SELECT *
FROM Total_sales, Total_profit, Top_region, Best_customer
;

-- Identify the top-performing customers in each segment using ranking functions.
SELECT *
FROM
(
SELECT `Customer Name`, Segment, SUM(Sales) AS spend, 
RANK() OVER(PARTITION BY Segment ORDER BY SUM(Sales) DESC) ranking
FROM superstore_sales_data
GROUP BY `Customer Name`, Segment
) Customer_segmentation
WHERE ranking = 1
;

-- Analyze which shipping mode generates the highest average profit while maintaining low discounts.
SELECT `Ship Mode`, AVG(Profit) avg_profit, AVG(Discount) low_discount
FROM superstore_sales_data
GROUP BY `Ship Mode`
HAVING AVG(Discount) < 0.20
ORDER BY avg_profit DESC
;













