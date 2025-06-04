SELECT
	CONCAT(FirstName, ' ',LastName) as FullName
FROM
	employees
WHERE
	EmployeeID IN(
    SELECT
		EmployeeID
	FROM 
		orders
	WHERE
		OrderID = 10266
    )