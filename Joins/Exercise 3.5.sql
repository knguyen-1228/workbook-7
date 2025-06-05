SELECT
	O.OrderID,
    O.ShipName,
    O.ShipAddress,
    S.CompanyName
FROM 
	orders O
JOIN shippers S
	ON O.ShipVia = S.ShipperID
WHERE
	O.ShipCountry LIKE '%Germany%' -- or you could do O.ShipCountry = `Germany`