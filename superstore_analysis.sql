CREATE TABLE superstore (
    row_id VARCHAR(50),
    order_id VARCHAR(50),
    order_date VARCHAR(50),
    ship_date VARCHAR(50),
    ship_mode VARCHAR(50),
    customer_id VARCHAR(50),
    customer_name VARCHAR(100),
    segment VARCHAR(50),
    country VARCHAR(50),
    city VARCHAR(50),
    state VARCHAR(50),
    postal_code VARCHAR(50),
    region VARCHAR(50),
    product_id VARCHAR(50),
    category VARCHAR(50),
    sub_category VARCHAR(50),
    product_name TEXT,
    sales VARCHAR(50),
    quantity VARCHAR(50),
    discount VARCHAR(50),
    profit VARCHAR(50)
);
SELECT sales FROM superstore LIMIT 10;
SELECT product_name, sales
FROM superstore
ORDER BY CAST(sales AS DECIMAL(10,2)) DESC
LIMIT 10;
SELECT COUNT(*) FROM superstore;
SELECT * FROM superstore LIMIT 10;
SELECT *
FROM superstore
WHERE category = 'Technology';
SELECT product_name, sales
FROM superstore
ORDER BY CAST(sales AS DECIMAL(10,2)) DESC
LIMIT 10;
SELECT category, 
       SUM(CAST(sales AS DECIMAL(10,2))) AS total_sales
FROM superstore
GROUP BY category;
SELECT category, 
       SUM(CAST(sales AS DECIMAL(10,2))) AS total_sales
FROM superstore
GROUP BY category;
SELECT region, 
       AVG(CAST(profit AS DECIMAL(10,2))) AS avg_profit
FROM superstore
GROUP BY region;
SELECT region, 
       AVG(CAST(profit AS DECIMAL(10,2))) AS avg_profit
FROM superstore
GROUP BY region;
SELECT region, COUNT(*) AS total_orders
FROM superstore
GROUP BY region;
SELECT region, COUNT(*) AS total_orders
FROM superstore
GROUP BY region;
SELECT category, 
       SUM(CAST(sales AS DECIMAL(10,2))) AS total_sales
FROM superstore
GROUP BY category
HAVING SUM(CAST(sales AS DECIMAL(10,2))) > 100000;
SELECT category, 
       SUM(CAST(sales AS DECIMAL(10,2))) AS total_sales
FROM superstore
GROUP BY category
HAVING SUM(CAST(sales AS DECIMAL(10,2))) > 100000;
SELECT *
FROM superstore
WHERE STR_TO_DATE(order_date, '%m/%d/%Y')
BETWEEN '2016-01-01' AND '2016-12-31';
SELECT *
FROM superstore
WHERE STR_TO_DATE(order_date, '%m/%d/%Y')
BETWEEN '2016-01-01' AND '2016-12-31';
SELECT *
FROM superstore
WHERE product_name LIKE '%Chair%';
SELECT category,
       SUM(CAST(profit AS DECIMAL(10,2))) AS total_profit
FROM superstore
GROUP BY category;
SELECT category,
       SUM(CAST(profit AS DECIMAL(10,2))) AS total_profit
FROM superstore
GROUP BY category;
SELECT product_name, profit
FROM superstore
ORDER BY CAST(profit AS DECIMAL(10,2)) DESC
LIMIT 5;
SELECT 
  MONTH(STR_TO_DATE(order_date, '%m/%d/%Y')) AS month,
  SUM(CAST(sales AS DECIMAL(10,2))) AS total_sales






