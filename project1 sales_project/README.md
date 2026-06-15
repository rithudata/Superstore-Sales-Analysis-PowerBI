# Superstore Sales Analysis Report

## Project Overview
This project analyzes Superstore sales performance using MySQL and Power BI. The objective is to understand sales trends, profit performance, customer segments, product categories, and regional sales distribution.

## Tools Used
- MySQL Workbench
- Power BI

## Data Modeling
A Star Schema data model was created for reporting and analysis.

### Fact Table
- fact_sales

### Dimension Tables
- dim_customers
- dim_products
- dim_date

## Data Preparation
1. Imported raw sales data into MySQL.
2. Created a cleaned sales table.
3. Built dimension tables from the cleaned data.
4. Created the fact_sales table.
5. Established relationships using a star schema model.
6. Loaded the model into Power BI.

## Dashboard KPIs
- Total Sales: 2.27M
- Total Profit: 285.71K
- Total Quantity: 37K
- Profit Margin: 12.57%

## Dashboard Analysis
The dashboard provides insights into:

- Sales by Category
- Profit by Category
- Quantity by Category
- Sales by Segment
- Profit by Segment
- Sales by Region
- Sales by State
- Sales Trend by Year and Quarter
- Sales Trend by Order Date

## Files Included
### Dataset
- Raw Sales Table
- Clean Sales Table
- fact_sales
- dim_customers
- dim_products
- dim_date

### Dashboard
- Superstore_Sales_Report.pbix
- dashboard.png
- schema_model.png


