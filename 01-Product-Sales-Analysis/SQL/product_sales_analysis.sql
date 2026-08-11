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
