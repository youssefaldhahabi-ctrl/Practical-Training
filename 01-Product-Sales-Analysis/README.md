# Product Sales Analysis

## Business Question

Which products generated the highest total revenue, and how many units were sold for each product?

## Dataset

This analysis uses the AdventureWorksLT database and focuses on product and sales order detail data.

## SQL Analysis

I joined the following tables:

- `SalesLT.Product`
- `SalesLT.SalesOrderDetail`

The analysis calculates:

- Total quantity sold for each product
- Total revenue for each product
- Total line sales

The results are grouped by product and sorted by total revenue in descending order to identify the top 10 products.

## SQL Concepts Used

- `TOP`
- `INNER JOIN`
- `SUM()`
- `GROUP BY`
- `ORDER BY`
- Table aliases
- Calculated columns

## Key Result

The query successfully identified the top 10 products based on total revenue.

## SQL Query

```sql
SELECT TOP(10)
    Product.Name AS Product_Name,
    SUM(OrderDetail.OrderQty) AS Total_Quantity_Sold,
    SUM(OrderDetail.UnitPrice * OrderDetail.OrderQty) AS Total_Revenue,
    SUM(OrderDetail.LineTotal)
FROM SalesLT.Product AS Product
INNER JOIN SalesLT.SalesOrderDetail AS OrderDetail
    ON Product.ProductID = OrderDetail.ProductID
GROUP BY Product.Name
ORDER BY Total_Revenue DESC;
```
