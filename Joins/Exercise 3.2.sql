SELECT
	P.ProductID,
    P.ProductName,
    P.UnitPrice,
    S.CompanyName as SupplierName
FROM 
	products P
JOIN suppliers S
	ON P.SupplierID = S.SupplierID
WHERE
	UnitPrice > 75
ORDER BY
	P.ProductName
	