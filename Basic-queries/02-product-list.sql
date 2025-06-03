-- 1) What is the name of the table that holds the items Northwind sells?
SELECT
	*
FROM
	products;
    
-- 2) Write a query to list the productId, productName, and unitPrice of every product
SELECT 
	ProductID, ProductName, UnitPrice
FROM
	products;
    
-- 3) Write a query to list the product id, name, and price of every product but ascending order by price
SELECT
	productid, productname, unitprice
FROM
	products
ORDER BY
	unitprice ASC;
    
-- 4) What are the products that we carry where unit price is 7.50 or less
SELECT
	productid, productname, unitprice
FROM 
	products
WHERE
	UnitPrice <= 7.50;
    
-- 5) What are the product that we carry where we have at least 100 units on hand and order in descending order by price
SELECT
	ProductId, ProductName, UnitPrice
FROM
	products
WHERE
	UnitsInStock >= 100 
ORDER BY
	UnitPrice ASC;
    
-- 6) What are the products we carry that have at least 100 units on hand. order by descending if two or more have same price list those in asc by name
SELECT
	ProductId, ProductName, UnitPrice
FROM
	products
WHERE
	UnitsInStock >= 100 
ORDER BY
	UnitPrice DESC, ProductName ASC;
    
-- 7) What are products we carry where we have no units on hand, but 1 or more units of them on backorder. Order by product name
SELECT 
	ProductID, ProductName, UnitPrice
FROM
	products
WHERE
	UnitsInStock = 0 AND UnitsOnOrder >= 1
ORDER BY
	ProductName;

-- 8) What is the name of the table that holds the types (category) of the items in northwind sells
SELECT
	*
FROM
	categories;

-- 9) Write a query that lists all the columns and all of the rows of the categories table
SELECT
	*
FROM
	categories;
    
-- 10) Examine the Product table, How does it identify the type(category) of each item sold? Write a query to list all the seafood iteam we carry?
-- the product table has a category id that shares with the category table 
SELECT
	ProductID, ProductName, UnitPrice
FROM 
	products
WHERE
	CategoryID = 8;

-- 11) What are the first and last names f all the northwind employee
SELECT
	firstName, lastName
FROM
	employees;
    
-- 12) What employees have manager in their table
SELECT 
	firstName, lastName
FROM
	employees
WHERE
	Title like "%manager%";
    
-- 13) List the distinct job titles in employee
SELECT 
	DISTINCT title
FROM
	employees;
    
-- 14) What employee have a salary that is between 2000 and 2500
SELECT
	firstName, lastName, salary
FROM
	employees
WHERE
	salary BETWEEN 2000 AND 2500;
    
-- 15) List all of the information about all of northwinds suppliers
SELECT
	*
FROM 
	suppliers;
    
-- 16) Examine product table. HOw do you know what supplier supplies each product? write a query to list all of the items that "Tokyo Traders" supplies to northwood
SELECT
	ProductID, ProductName, SupplierID
FROM
	products
WHERE
	SupplierID = 4;
