-- Data Exploration
SELECT *
FROM sales_data;

SELECT *
FROM sales_data
ORDER BY Sale_Date DESC;

SELECT Product_ID, Sale_Date, Sales_Amount
FROM sales_data;

SELECT COUNT(*) AS total_sales_records
FROM sales_data;

SELECT *
FROM sales_data
WHERE Region = 'North';

SELECT *
FROM sales_data
WHERE Payment_Method = 'Credit Card';

SELECT *
FROM sales_data
WHERE Discount > 0.15;

SELECT Product_Category, Sales_Channel
FROM sales_data
WHERE Sales_Channel = 'Online';

SELECT *
FROM sales_data
WHERE Customer_Type = 'Returning';

SELECT *
FROM sales_data
WHERE Sales_Rep = 'Bob';

SELECT *
FROM sales_data
WHERE Sales_Amount > 4000
ORDER BY Sales_Amount ASC
;

SELECT *
FROM sales_data
WHERE Product_Category = 'Electronics' AND Region = 'East'
;

SELECT *
FROM sales_data
WHERE Payment_Method = 'Cash' OR Payment_Method = 'Bank Transfer'
;

SELECT *
FROM sales_data
WHERE Product_Category != 'Clothing'
;

SELECT *
FROM sales_data
WHERE Sale_Date > '2023-06-01'
;

SELECT *
FROM sales_data
WHERE Unit_Price > Unit_Cost
;

SELECT *
FROM sales_data
WHERE Quantity_Sold >(
				SELECT AVG(Quantity_Sold)
                FROM sales_data
);


SELECT *
FROM sales_data
ORDER BY Sales_Amount DESC
LIMIT 10
;


SELECT SUM(Sales_Amount) AS sum_sales_amount
FROM sales_data
;

SELECT AVG(Sales_Amount) AS avg_sales_amount
FROM sales_data
;

SELECT MIN(Sales_Amount) AS min_sales_amount, MAX(Sales_Amount) AS max_sales_amount
FROM sales_data
;

SELECT SUM(Quantity_Sold) AS total_quantity_sold
FROM sales_data
;

SELECT AVG(Discount) AS avg_discount
FROM sales_data
;

SELECT Region, COUNT(*) AS count_per_region
FROM sales_data
GROUP BY Region
;

SELECT Product_Category, SUM(Sales_Amount) AS total_revenue
FROM sales_data
GROUP BY Product_Category
;

SELECT Product_Category, AVG(Unit_Price) as avg_price
FROM sales_data
GROUP BY Product_Category
;

SELECT Region, MAX(Sales_Amount) AS highest_sale
FROM sales_data
GROUP BY Region
;

SELECT Customer_Type, COUNT(Customer_Type) AS total_returning_customers
FROM sales_data
WHERE Customer_Type = 'Returning'
;


SELECT Sales_Rep, SUM(Sales_Amount) AS total_sales
FROM sales_data
GROUP BY Sales_Rep
;


SELECT Product_Category, SUM(Quantity_Sold) AS total_quantity_sold
FROM sales_data
GROUP BY Product_Category
;

SELECT Customer_Type, AVG(Discount) AS avg_discount
FROM sales_data
GROUP BY Customer_Type
;

SELECT Payment_Method, SUM(Sales_Amount) AS total_sales
FROM sales_data
GROUP BY Payment_Method
;

SELECT Sales_Channel, SUM(Sales_Amount) AS number_of_sales
FROM sales_data
GROUP BY Sales_Channel
;

SELECT Region, AVG(Sales_Amount) AS number_of_sales
FROM sales_data
GROUP BY Region
;

SELECT Product_Category, SUM(Quantity_Sold * (Unit_Price - Unit_Cost)) AS total_profit
FROM sales_data
GROUP BY Product_Category
;

SELECT Sales_Rep, SUM(Sales_Amount) AS top_sales_rep
FROM sales_data
GROUP BY Sales_Rep
ORDER BY top_sales_rep DESC
;

SELECT Region, SUM(Sales_Amount) AS highest_revenue_generated
FROM sales_data
GROUP BY Region
ORDER BY highest_revenue_generated DESC
;

SELECT Payment_Method, COUNT(Payment_Method) AS frequently_used
FROM sales_data
GROUP BY Payment_Method
ORDER BY frequently_used DESC
;

SELECT Sale_Date, SUBSTRING(Sale_Date,1,7) AS `Month`
FROM sales_data;

SELECT SUBSTRING(Sale_Date,1,7) AS `Month`, COUNT(*) AS sales_count
FROM sales_data
GROUP BY `Month`
;

SELECT SUBSTRING(Sale_Date,1,7) AS `Month`, SUM(Sales_Amount) AS total_monhtly_revenue
FROM sales_data
GROUP BY `Month`
;

SELECT SUBSTRING(Sale_Date,1,7) AS `Month`, MAX(Sales_Amount) AS highest_monhtly_sales
FROM sales_data
GROUP BY `Month`
ORDER BY highest_monhtly_sales DESC
;

SELECT *, SUBSTRING(Sale_Date,1,7) AS `Month`
FROM sales_data
WHERE Sale_Date > '2023-09-30' AND Sale_Date < '2024-01-01'
ORDER BY `Month`
;

SELECT *,
CASE
	WHEN Sales_Amount > 4000 THEN 'High'
    WHEN Sales_Amount BETWEEN 2000 AND 4000 THEN 'Medium'
    WHEN Sales_Amount < 4000 THEN 'Low'
END AS sales_category
FROM sales_data;

SELECT *,
CASE
	WHEN Discount > 0.15 THEN 'Large Discount'
    WHEN Discount < 0.15 THEN 'Small Discount'
END AS discount_category
FROM sales_data;

SELECT *,
CASE
	WHEN Unit_Price > 2500 THEN 'Expensive'
    WHEN Unit_Price < 2500 THEN 'Affordable'
END AS product_category
FROM sales_data;

SELECT Region, SUM(Sales_Amount) AS total_sales
FROM sales_data
GROUP BY Region
HAVING total_sales > 1200000
;

SELECT Product_Category, AVG(Sales_Amount) AS avg_sales
FROM sales_data
GROUP BY Product_Category
HAVING avg_sales > 5000
;

SELECT Sales_Rep, COUNT(*) AS total_transactions
FROM sales_data
GROUP BY Sales_Rep
HAVING total_transactions > 200
;

SELECT Product_Category, SUM(Quantity_Sold) AS total_quantity_sold
FROM sales_data
GROUP BY Product_Category
HAVING total_quantity_sold > 6000
;

SELECT Sales_Rep, SUM(Sales_Amount) AS total_revenue,
RANK() OVER(ORDER BY SUM(Sales_Amount) DESC) rank_num
FROM sales_data
GROUP BY Sales_Rep
;

SELECT Sales_Amount,
RANK() OVER(ORDER BY Sales_Amount DESC) sale_rank_num
FROM sales_data
;

SELECT Product_ID, Sales_Rep, Sales_Amount,
Sum(Sales_Amount) OVER(ORDER BY Sales_Amount ASC) AS rolling_total
FROM sales_data;

SELECT *,
ROW_NUMBER() OVER(ORDER BY Sales_Amount DESC) row_num
FROM sales_data
;

WITH ranked_sales AS
(SELECT Region, Sales_Amount, Sales_Rep, Product_Category,
	RANK() OVER (PARTITION BY Region ORDER BY Sales_Amount DESC) AS ranking
	FROM sales_data
)
SELECT *
FROM ranked_sales
WHERE ranking = 1;

WITH average_sales AS
(SELECT Region, Sales_Rep, Product_Category, Sales_Amount,
AVG(Sales_Amount) OVER (PARTITION BY Region) AS avg_sales_row
FROM sales_data
)
SELECT *
FROM average_sales;

SELECT *
FROM sales_data
WHERE Sales_Amount > (SELECT AVG(Sales_Amount)
						FROM sales_data
)
;

SELECT *
FROM
(SELECT Sales_Rep, SUM(Sales_Amount) AS total_sales
FROM Sales_data
GROUP BY Sales_Rep
ORDER BY total_sales DESC
LIMIT 1
)highest_sale
;

SELECT*
FROM sales_data
WHERE Discount IN (SELECT MAX(Discount) as max_discount
					FROM sales_data)
;

SELECT *
FROM sales_data
WHERE Unit_Price > (SELECT AVG(Unit_Price)
					FROM sales_data
                    )
;

-- Which product category is most profitable?
SELECT Product_Category, SUM(Quantity_Sold * (Unit_Price - Unit_Cost)) AS total_profit
FROM sales_data
GROUP BY Product_Category
ORDER BY total_profit DESC
LIMIT 1
;

-- Which sales channel generates the highest revenue?
SELECT Sales_Channel, SUM(Sales_Amount) AS number_of_sales
FROM sales_data
GROUP BY Sales_Channel
ORDER BY number_of_sales DESC
LIMIT 1
;

-- Which customer type spends more on average?
SELECT *
FROM
(SELECT Customer_Type, AVG(Sales_Amount) AS avg_customer_type_spend_amount
FROM sales_data
GROUP BY Customer_Type
ORDER BY avg_customer_type_spend_amount DESC
LIMIT 1
)AS avg_spend_customer_type
;

-- Which region has the highest average quantity sold?
SELECT *
FROM
(SELECT Region, AVG(Quantity_Sold) AS avg_region_quantity_sold
FROM sales_data
GROUP BY Region
ORDER BY avg_region_quantity_sold DESC
LIMIT 1
)AS avg_quantity_sold_region
;

-- Which payment method is associated with the highest sales?
SELECT *
FROM
(SELECT Payment_Method, SUM(Sales_Amount) AS total_sales
FROM sales_data
GROUP BY Payment_Method
ORDER BY total_sales DESC
LIMIT 1
)AS highest_sales
;

-- Find the most active sales representative.
SELECT *
FROM
(SELECT Sales_Rep, SUM(Sales_Amount) AS sales_rep_total_sales
FROM sales_data
GROUP BY Sales_Rep
ORDER BY sales_rep_total_sales DESC
LIMIT 1
)AS most_active_sales
;

-- Determine the overall profit generated.
SELECT SUM(Quantity_Sold * (Unit_Price - Unit_Cost)) AS total_profit
FROM sales_data;

-- Calculate profit margin for each sale.
SELECT Product_ID, Sales_Rep, Product_Category, Unit_Price, Unit_Cost, 
(Unit_Price - Unit_Cost) AS profit,
Quantity_Sold,
Quantity_Sold * (Unit_Price - Unit_Cost) AS quantity_sold_profit, 
Sales_Amount, 
Quantity_Sold * (Unit_Price - Unit_Cost) / Sales_Amount * 100 AS profit_margin
FROM sales_data
;

-- Create a view showing:Product category, Total sales, Total profit, Average discount
SELECT *
FROM
(SELECT Product_Category, SUM(Sales_Amount) total_sales,
SUM(Quantity_Sold * (Unit_Price - Unit_Cost)) total_profit,
AVG(Discount) avg_discount
FROM sales_data
GROUP BY Product_Category
)total_sales_profit_avg_discount
;

-- Create a stored procedure that returns total sales for a selected region.
DELIMITER $$
CREATE PROCEDURE region_total_sales()
BEGIN
	SELECT Region, SUM(Sales_Amount)
	FROM sales_data
	GROUP BY Region;
END $$
DELIMITER ;
;

CALL region_total_sales();

-- Create a query that identifies suspiciously low-profit sales.
WITH Low_profit AS
(
SELECT Sales_Rep,
SUM(Quantity_Sold * (Unit_Price - Unit_Cost)) AS profit
FROM sales_data
GROUP BY Sales_Rep
)
SELECT *
FROM Low_profit
ORDER BY profit ASC
LIMIT 1
;

-- Find duplicate sales records if any exist.

SELECT *,
ROW_NUMBER() OVER(
PARTITION BY Sales_Rep, Sale_Date, Region, Sales_Amount, Product_Category) AS row_num
FROM sales_data
;

WITH duplicate_cte AS
(
SELECT *,
ROW_NUMBER() OVER(
PARTITION BY Sales_Rep, Sale_Date, Region, Sales_Amount, Product_Category) AS row_num
FROM sales_data
)
SELECT *
FROM duplicate_cte
WHERE row_num > 1;

-- Create a ranking of product categories by profitability.
WITH ranked_sales AS
(SELECT Product_Category, SUM(Quantity_Sold * (Unit_Price - Unit_Cost)) AS profit_sum,
	RANK() OVER (ORDER BY SUM(Quantity_Sold * (Unit_Price - Unit_Cost)) DESC) AS ranking
	FROM sales_data
    GROUP BY Product_Category
)
SELECT *
FROM ranked_sales;

-- Identify seasonal trends in sales.
SELECT
    MONTH(Sale_Date) AS sales_month,
    SUM(Sales_Amount) AS total_sales
FROM sales_data
GROUP BY MONTH(Sale_Date)
ORDER BY sales_month;

-- Compare online vs retail sales performance.
WITH online_retail_sales AS
(SELECT Sales_Channel, SUM(Sales_Amount) AS sum_sales
	FROM sales_data
    GROUP BY Sales_Channel
    ORDER BY sum_sales DESC
)
SELECT *
FROM online_retail_sales;

-- Find which sales reps perform best in each region.
SELECT *
FROM 
(
SELECT Region, Sales_Rep, SUM(Sales_Amount) AS total_sales,
RANK() OVER (PARTITION BY Region ORDER BY SUM(Sales_Amount) DESC) AS ranking
FROM sales_data
GROUP BY Region, Sales_Rep
) ranked_reps
WHERE ranking = 1;

-- Create a cumulative monthly revenue analysis.
SELECT *
FROM
(
SELECT SUBSTRING(Sale_Date,1,7) AS `Month`, SUM(Sales_Amount) AS total_monhtly_revenue
FROM sales_data
GROUP BY `Month`
ORDER BY `Month` ASC
)monthly_revenue
;

-- Build a customer segmentation query based on spending behavior.
SELECT *
FROM
(SELECT Customer_Type, SUM(Sales_Amount) as total_spend,
CASE
	WHEN SUM(Sales_Amount) > 500000 THEN 'High Spenders'
    WHEN SUM(Sales_Amount) < 500000 THEN 'Low Spenders'
END AS Customer_spend
FROM sales_data
GROUP BY Customer_Type
)Spending_behaviour
;

-- Calculate percentage contribution of each region to total sales.
SELECT Region, SUM((Sales_Amount)) as regional_sales,
(SUM(Sales_Amount) /(SELECT SUM(Sales_Amount) FROM sales_data)) * 100 AS percentage_contribution
FROM sales_data
GROUP BY Region
;

-- Find month-over-month sales growth.
WITH monthly_sales AS 
(SELECT MONTH(Sale_Date) AS 'Month', SUM(Sales_Amount) AS total_sales
FROM sales_data
GROUP BY MONTH(Sale_Date)
)
SELECT `Month`,
    total_sales,
	LAG(total_sales) OVER (ORDER BY `month`) AS previous_month_sales,
	(
		(total_sales - LAG(total_sales) OVER (ORDER BY month))
        /
        LAG(total_sales) OVER (ORDER BY month)
    ) * 100 AS MoM_growth_percentage
FROM monthly_sales;

-- Determine which category has the best profit-to-sales ratio.
SELECT Product_Category,

       SUM((Unit_Price - Unit_Cost) * Quantity_Sold) AS total_profit,

       SUM(Sales_Amount) AS total_sales,

       (
           SUM((Unit_Price - Unit_Cost) * Quantity_Sold)
           /
           SUM(Sales_Amount)
       ) * 100 AS profit_to_sales_ratio

FROM sales_data
GROUP BY Product_Category
ORDER BY profit_to_sales_ratio DESC;

-- Identify underperforming regions.
SELECT Region, SUM(Sales_Amount) total_sales, 
		SUM((Unit_Price - Unit_Cost) * Quantity_Sold) total_profit
FROM sales_data
GROUP BY Region
ORDER BY total_profit ASC
;

-- Find the correlation between discount and quantity sold.
SELECT Discount,
       AVG(Quantity_Sold) AS avg_quantity
FROM sales_data
GROUP BY Discount
ORDER BY Discount;

-- Analyze whether higher discounts increase sales volume.
SELECT Discount,
       SUM(Sales_Amount) AS total_sales
FROM sales_data
GROUP BY Discount
ORDER BY Discount DESC;

-- Find sales reps with consistently high performance across months.
WITH monthly_rep_sales AS (

    SELECT
        Sales_Rep,
        MONTH(Sale_Date) AS sales_month,
        SUM(Sales_Amount) AS monthly_sales

    FROM sales_data
    GROUP BY Sales_Rep, MONTH(Sale_Date)
)

SELECT
    Sales_Rep,
    AVG(monthly_sales) AS avg_monthly_sales,
    MIN(monthly_sales) AS lowest_month,
    MAX(monthly_sales) AS highest_month

FROM monthly_rep_sales
GROUP BY Sales_Rep
ORDER BY avg_monthly_sales DESC;

-- Determine peak sales periods.
SELECT
    MONTH(Sale_Date) AS sales_month,
    SUM(Sales_Amount) AS total_sales
FROM sales_data
GROUP BY MONTH(Sale_Date)
ORDER BY total_sales DESC;

-- Calculate rolling average sales over 7 days/months.
WITH monthly_sales AS (

    SELECT
        MONTH(Sale_Date) AS sales_month,
        SUM(Sales_Amount) AS total_sales

    FROM sales_data
    GROUP BY MONTH(Sale_Date)
)

SELECT
    sales_month,
    total_sales,

    AVG(total_sales) OVER (
        ORDER BY sales_month
        ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
    ) AS rolling_avg_7_months

FROM monthly_sales;

-- Build a complete sales dashboard query using multiple CTEs.
WITH Total_sales AS
(
SELECT SUM(Sales_Amount) AS total_sales
FROM sales_data
),
Total_profit AS
(
SELECT SUM((Unit_Price - Unit_Cost) * Quantity_Sold) total_profit
FROM sales_data
),
Top_region AS
(
SELECT Region, SUM(Sales_Amount) region_sales
FROM sales_data
GROUP BY Region
ORDER BY region_sales DESC
LIMIT 1
),
Best_sales_rep AS
(
SELECT Sales_Rep, SUM(Sales_Amount) AS sales_rep_sales
FROM sales_data
Group BY Sales_Rep
ORDER BY sales_rep_sales DESC
LIMIT 1
)
SELECT *
FROM Total_sales, Total_profit, Top_region, Best_sales_rep
;













