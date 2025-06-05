SELECT 
	C.CategoryName
FROM 
	categories C
JOIN products P
	ON C.CategoryID = P.CategoryID
WHERE
	UnitPrice IN(
	SELECT
		MAX(P.UnitPrice)
	FROM
		products P
	)
