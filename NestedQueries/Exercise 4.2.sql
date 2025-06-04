SELECT
	OrderID, ShipName, ShipAddress
FROM
	orders
WHERE
	ShipVia IN (
    SELECT
		ShipperID
	FROM
		shippers
	WHERE
		ShipperID = 1
    )