-- Top 10 Dealers
SELECT DEALER_NAME,SUM(Value) AS dealer_sales FROM cy_data GROUP BY DEALER_NAME ORDER BY dealer_sales DESC LIMIT 10;

-- Top Products by Revenue
SELECT PRODUCT_NAME,SUM(Value) AS total_sales FROM cy_data GROUP BY PRODUCT_NAME ORDER BY total_sales DESC LIMIT 10;

-- Monthly Sales Trend
SELECT DATE_FORMAT(TRANSACTION_DATE,'%Y-%m') AS month,SUM(Value) AS total_sales FROM cy_data GROUP BY month ORDER BY month;

-- Daily Sales Trend
SELECT TRANSACTION_DATE,SUM(Value) AS daily_sales FROM cy_data GROUP BY TRANSACTION_DATE ORDER BY TRANSACTION_DATE;

-- Painter Status
SELECT PAINTER_STATUS,COUNT(DISTINCT PAINTER_ID) AS painters FROM cy_data GROUP BY PAINTER_STATUS;

-- Category Wise Sales
SELECT CATEGORY_CODE,SUM(Value) AS total_sales FROM cy_data GROUP BY CATEGORY_CODE;

-- Highest Sales Day
SELECT TRANSACTION_DATE,SUM(Value) AS total_sales FROM cy_data GROUP BY TRANSACTION_DATE ORDER BY total_sales DESC LIMIT 1;

-- Quarter Wise Sales
SELECT Quarter,SUM(Value) AS total_sales FROM cy_data GROUP BY Quarter ORDER BY Quarter;

-- Top Dealer in Each State
SELECT STATE_NAME,
       DEALER_NAME,
       total_sales
FROM (
    SELECT STATE_NAME,
           DEALER_NAME,
           SUM(Value) AS total_sales,
           RANK() OVER (PARTITION BY STATE_NAME ORDER BY SUM(Value) DESC) AS rnk
    FROM cy_data
    GROUP BY STATE_NAME, DEALER_NAME
) t
WHERE rnk = 1;

-- Product Sales Ranking
SELECT PRODUCT_NAME,
       SUM(Value) AS total_sales,
       RANK() OVER (ORDER BY SUM(Value) DESC) AS product_rank
FROM cy_data
GROUP BY PRODUCT_NAME;

-- Running Total Sales
SELECT PRODUCT_NAME,
       SUM(Value) AS total_sales,
       RANK() OVER (ORDER BY SUM(Value) DESC) AS product_rank
FROM cy_data
GROUP BY PRODUCT_NAME;

-- Top 3 Products per Zone
SELECT ZONE,
       PRODUCT_NAME,
       total_sales
FROM (
    SELECT ZONE,
           PRODUCT_NAME,
           SUM(Value) AS total_sales,
           RANK() OVER (PARTITION BY ZONE ORDER BY SUM(Value) DESC) AS rnk
    FROM cy_data
    GROUP BY ZONE, PRODUCT_NAME
) t
WHERE rnk <= 3;

-- Dealer Performance vs Average
SELECT DEALER_NAME,
       SUM(Value) AS dealer_sales,
       AVG(SUM(Value)) OVER () AS avg_sales
FROM cy_data
GROUP BY DEALER_NAME;