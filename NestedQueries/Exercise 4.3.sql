SELECT
	OrderID
FROM 
	northwind.`order details`
WHERE
	ProductID IN (
    SELECT
		ProductID
	FROM 
		products
	WHERE
		ProductName = 'Sasquatch Ale'
    )