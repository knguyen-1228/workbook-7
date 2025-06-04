-- 3) What is the price of the cheapest item that Northwwind sells
SELECT
	min(UnitPrice) as "Cheapest Product"
FROM
	products;
    