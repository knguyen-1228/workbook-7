-- 8) For suppliers that provided at least 5 items to northwind, What is the supplier id of each supplier and the number of items they supply
SELECT 
	SupplierID, count(productID)
FROM
	products
GROUP BY
	SupplierID
HAVING
	count(ProductID) >= 5
ORDER BY
	SupplierID