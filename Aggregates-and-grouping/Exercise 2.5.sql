-- 5) What is the price of the most expensive item that northwind sells
SELECT
	MAX(unitPrice) as "Most Expensive Item"
FROM
	products;