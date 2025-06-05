SELECT
	O.OrderID,
    O.OrderDate,
    O.ShipName,
    O.ShipAddress
FROM 
	orders O
JOIN northwind.`order details` OD
	ON O.OrderID = OD.OrderID
JOIN products P
	ON OD.ProductID = P.ProductID
WHERE
	ProductName = 'Sasquatch Ale'