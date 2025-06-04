-- 9) List the product ID, Name, and inventory value (Unit price times number of unit on hand). Sort by descending value if two or more have same value order by product name
SELECT 
	ProductID, 
    ProductName,
    UnitPrice * UnitsInStock AS InventoryValue
FROM
	products
ORDER BY
	InventoryValue DESC,
	ProductName ASC;