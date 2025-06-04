-- 6) What is the supplier ID of each Supplier and the number of items they supply
SELECT
	SupplierID, count(*)
FROM 
	products
GROUP BY
	SupplierID;