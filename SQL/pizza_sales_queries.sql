USE pizza_sales;

SELECT * FROM sales

-- Total Revenue
SELECT SUM(total_price) AS total_revenue FROM sales;

-- Total Orders
SELECT COUNT(DISTINCT order_id) AS total_orders FROM sales;

-- Total Pizzas Sold
SELECT SUM(quantity) AS pizzas_sold FROM sales;

-- Average Order Value
SELECT ROUND(SUM(total_price) / COUNT(DISTINCT order_id), 2) AS avg_order_value FROM sales;

-- Average Pizzas per Order
SELECT ROUND(SUM(quantity) / COUNT(DISTINCT order_id), 2) AS avg_pizzas_per_order FROM sales;

-- Hourly Trend of Orders
SELECT DATEPART(HOUR, order_time) AS order_hours, COUNT(DISTINCT order_id) AS total_orders FROM sales
GROUP BY DATEPART(HOUR, order_time)
ORDER BY order_hours;

-- Daily Trend of Orders
SELECT DATENAME(dw, order_date) AS order_day, COUNT(DISTINCT order_id) AS total_orders FROM sales
GROUP BY DATENAME(dw, order_date)
ORDER BY total_orders DESC;

-- Monthly Revenue
SELECT DATENAME(m, (order_date)) AS month_name, SUM(total_price) AS  revenue FROM sales
GROUP BY DATENAME(m, (order_date))
ORDER BY revenue DESC;

-- Top 10 Pizzas by Revenue
SELECT TOP 10 pizza_name, ROUND(SUM(total_price),2) AS revenue FROM sales
GROUP BY pizza_name
ORDER BY revenue DESC;

-- Bottom 10 Pizzas by Revenue
SELECT TOP 10 pizza_name, ROUND(SUM(total_price),2) AS revenue FROM sales
GROUP BY pizza_name
ORDER BY revenue;

-- Most Ordered Pizzas
SELECT TOP 10 pizza_name, SUM(quantity) AS orders FROM sales
GROUP BY pizza_name
ORDER BY orders DESC;

-- Revenue by Pizza Category
SELECT TOP 10 pizza_category, ROUND(SUM(total_price),2) AS revenue FROM sales
GROUP BY pizza_category
ORDER BY revenue DESC;

-- Revenue by Pizza Size
SELECT TOP 10 pizza_size, ROUND(SUM(total_price),2) AS revenue FROM sales
GROUP BY pizza_size
ORDER BY revenue DESC;

-- Revenue Contribution %
SELECT pizza_size, ROUND(SUM(total_price), 2) AS total_revenue, 
ROUND(SUM(total_price) * 100 / (SELECT SUM(total_price) FROM sales),2) AS pct FROM sales
GROUP BY pizza_size
ORDER BY pizza_size;

-- Running Revenue Trend
SELECT order_date, SUM(total_price) daily_revenue, SUM(SUM(total_price))
OVER(ORDER BY order_date) AS cumulative_revenue FROM sales
GROUP BY order_date;