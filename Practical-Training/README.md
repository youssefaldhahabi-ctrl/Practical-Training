# SQL Practical Training

This repository contains my practical SQL training and exercises as I develop my skills in SQL and Data Analysis.

## Current Practice — Product Sales Analysis

In this exercise, I analyzed product sales data from the AdventureWorksLT database.

### SQL Concepts Practiced

* `TOP`
* `INNER JOIN`
* `SUM()`
* Calculated columns
* `GROUP BY`
* `ORDER BY`
* Table aliases
* Aggregating sales data

### Business Question

> Which products generated the highest total revenue, and how many units of each product were sold?

### Analysis

I joined the `Product` table with the `SalesOrderDetail` table using `ProductID`.

Then I:

1. Grouped the sales data by product name.
2. Calculated the total quantity sold for each product.
3. Calculated total revenue using unit price × quantity.
4. Sorted the products by total revenue in descending order.
5. Selected the top 10 products.

### SQL Query

```sql
SELECT TOP(10)
    Product.Name AS Product_Name,
    SUM(OrderDetail.OrderQty) AS Total_Quantity_Sold,
    SUM(OrderDetail.UnitPrice * OrderDetail.OrderQty) AS Total_Revenue,
    SUM(OrderDetail.LineTotal) AS Total_LineTotal
FROM SalesLT.Product AS Product
INNER JOIN SalesLT.SalesOrderDetail AS OrderDetail
    ON Product.ProductID = OrderDetail.ProductID
GROUP BY Product.Name
ORDER BY Total_Revenue DESC;
```

## What I Learned

This exercise helped me practice combining multiple SQL concepts to answer a real business question rather than using SQL commands individually.

It is part of my ongoing journey toward becoming a Data Analyst.
