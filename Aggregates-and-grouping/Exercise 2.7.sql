-- 7) What is the categoryID of each category and the average price of each item by category
SELECT
	CategoryID, avg(UnitPrice)
FROM
	products
GROUP BY
	CategoryID