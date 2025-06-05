SELECT
	productId,
    productName,
    unitPrice,
    categoryName
FROM 
	products
JOIN categories 
	ON products.productName = categories.categoryName
