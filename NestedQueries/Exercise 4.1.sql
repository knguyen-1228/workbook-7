SELECT *
FROM
	products
WHERE
	UnitPrice in (
    SELECT
		max(UnitPrice) as "Max Price"
	FROM
		products)