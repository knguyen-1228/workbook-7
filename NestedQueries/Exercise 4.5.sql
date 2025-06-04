SELECT
	CompanyName
FROM
	customers
WHERE
	CustomerID IN(
    SELECT
		CustomerID
	FROM 
		orders
	WHERE
		OrderID = 10266
    )