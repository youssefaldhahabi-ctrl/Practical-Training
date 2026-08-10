select 
	top(10)
	Product.Name as Product_Name ,
	sum (OrderDetail.OrderQty) as Total_Quantity_Sold,
	SUM ( (OrderDetail.UnitPrice) * (OrderDetail.OrderQty) ) as Total_Revenue
from	
	SalesLT.Product as Product
inner join SalesLT.SalesOrderDetail as OrderDetail 
on Product.ProductID = OrderDetail.ProductID
group by
	Product.Name
order by Total_Revenue desc


