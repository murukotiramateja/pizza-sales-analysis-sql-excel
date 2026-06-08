# pizza-sales-analysis-sql-excel
Pizza Sales Analysis using SQL Server (SSMS) and Excel Dashboard to analyze revenue trends, product performance, and customer ordering behavior.

## Project Overview

This project analyzes pizza sales data using SQL Server (SSMS) and Excel. The objective is to identify key revenue drivers, customer ordering behavior, product performance, and sales trends through SQL analysis and an interactive Excel dashboard.

## Tools Used

* SQL Server Management Studio (SSMS)
* SQL (T-SQL)
* Microsoft Excel
* Pivot Tables
* Pivot Charts
* Slicers

## Dataset

The dataset contains transactional pizza sales information including:

* Order ID
* Order Date
* Order Time
* Pizza Name
* Pizza Category
* Pizza Size
* Quantity
* Unit Price
* Total Price
* Ingredients
     
<a href = "https://github.com/murukotiramateja/pizza-sales-analysis-sql-excel/blob/main/Dataset/pizza_sales.csv"> Dataset </a>

## Business Questions Solved Using SQL

### KPI Analysis

* Total Revenue
* Total Orders
* Total Pizzas Sold
* Average Order Value
* Average Pizzas per Order

### Time-Based Analysis

* Hourly Order Trends
* Daily Order Trends
* Monthly Revenue Trends

### Product Analysis

* Top 10 Pizzas by Revenue
* Bottom 10 Pizzas by Revenue
* Most Ordered Pizzas
* Revenue by Category
* Revenue by Size
* Revenue Contribution Percentage
* Running Revenue Trend

## Dashboard KPIs

| KPI                  |    Value |
| -------------------- | -------: |
| Total Revenue        | $817,860 |
| Total Orders         |   21,350 |
| Total Pizzas Sold    |   49,574 |
| Avg Pizzas per Order |     2.32 |
| Avg Order Value      |   $38.31 |   

<a href = "https://github.com/murukotiramateja/pizza-sales-analysis-sql-excel/blob/main/Dashboard/dashboard_preview.png"> View Dashboard </a>

## Key Insights

* Generated $817.9K revenue from 21.3K orders and 49.6K pizzas sold.
* Revenue remained stable throughout the year.
* Classic pizzas generated the highest sales volume and revenue.
* Large pizzas contributed 45.9% of total revenue.
* Top 10 pizzas accounted for 44.7% of pizzas sold.
* Chicken pizzas achieved a higher revenue share relative to their sales volume.

## Project Structure

```text
pizza-sales-analysis-sql-excel
│
├── README.md
├── Dataset
├── SQL
├── Dashboard
```

## Business Recommendations

* Focus promotional efforts on top-performing pizzas.
* Increase marketing for Large-size pizzas as they generate the highest revenue.
* Analyze lower-performing menu items for optimization opportunities.
* Use ordering trends to improve staffing and inventory planning.


## Conclusion

This project demonstrates how SQL Server and Excel can be combined to perform end-to-end business analysis, transforming raw transactional data into actionable business insights through querying, visualization, and dashboard reporting.

## Author

Created by Murukoti Rama Teja
