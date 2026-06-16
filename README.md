# 🛒 Superstore Sales Analysis — MySQL & Power BI

## Project Overview
This project analyzes Superstore sales performance using MySQL and Power BI. 
The objective is to understand sales trends, profit performance, customer 
segments, product categories, and regional sales distribution.

## Tools Used
- **MySQL Workbench** — data cleaning, star schema modeling, SQL queries
- **Power BI** — interactive dashboard and KPI reporting

## Data Modeling — Star Schema
A star schema was designed for efficient reporting and analysis.

**Fact Table:** fact_sales  
**Dimension Tables:** dim_customers, dim_products, dim_date

## Data Preparation Steps
1. Imported raw sales data into MySQL
2. Created a cleaned sales table
3. Built dimension tables from cleaned data
4. Created the fact_sales table
5. Established relationships using star schema model
6. Loaded the model into Power BI

## Dashboard KPIs
| Metric | Value |
|--------|-------|
| Total Sales | $2.27M |
| Total Profit | $285.71K |
| Total Quantity | 37K units |
| Profit Margin | 12.57% |

## Dashboard Insights
- Sales by Category, Segment, and Region
- Profit by Category and Segment
- Sales by State (geographic distribution)
- Sales Trend by Year, Quarter, and Order Date

## Files Included
- `Raw Sales Table` — original dataset
- `Clean Sales Table` — cleaned and processed data
- `fact_sales`, `dim_customers`, `dim_products`, `dim_date` — star schema tables
- `Superstore_Sales_Report.pbix` — Power BI dashboard
- `dashboard.png` — dashboard screenshot
- `schema_model.png` — star schema diagram

## About Me
Aspiring Data Analyst from Tamil Nadu, India.  
Skills: SQL, Power BI, MySQL, Data Modeling, Data Visualization.  
Open to freelance data projects and entry-level analyst opportunities.
