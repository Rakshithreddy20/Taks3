Verify Data Import

Query:
SELECT COUNT(*) FROM superstore;
Purpose:
Checks total number of records to confirm that the dataset was imported correctly.

Query:
SELECT * FROM superstore LIMIT 10;
Purpose:
Displays first 10 rows to understand the data structure.

Filtering Data
Query:
SELECT * FROM superstore WHERE category = 'Technology';
Purpose:
Filters and displays only the records belonging to the Technology category.

Sorting Data (Top Selling Products)
Query:
SELECT product_name, sales
FROM superstore
ORDER BY CAST(sales AS DECIMAL(10,2)) DESC
LIMIT 10;
Purpose:
Finds the top 10 highest selling products by sorting sales in descending order.

Aggregation (Total Sales by Category)
Query:
SELECT category, 
       SUM(CAST(sales AS DECIMAL(10,2))) AS total_sales
FROM superstore
GROUP BY category;
Purpose:
Calculates the total sales for each product category.

Average Profit by Region
Copy code
SELECT region, 
       AVG(CAST(profit AS DECIMAL(10,2))) AS avg_profit
FROM superstore
GROUP BY region;
Purpose:
Finds the average profit generated in each region.

Using HAVING Clause
Query:
SELECT category, 
       SUM(CAST(sales AS DECIMAL(10,2))) AS total_sales
FROM superstore
GROUP BY category
HAVING SUM(CAST(sales AS DECIMAL(10,2))) > 100000;
Purpose:
Shows only those categories whose total sales are greater than 100000.

Date Range Analysis (BETWEEN)
Query:
SELECT *
FROM superstore
WHERE STR_TO_DATE(order_date, '%m/%d/%Y')
BETWEEN '2016-01-01' AND '2016-12-31';
Purpose:
Displays all orders placed in the year 2016.

Pattern Search Using LIKE
Query:
SELECT *
FROM superstore
WHERE product_name LIKE '%Chair%';
Purpose:
Finds all products whose name contains the word "Chair"..
