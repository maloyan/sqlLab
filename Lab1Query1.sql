/*Выбрать объемы продаж всех товаров, в названии которых присутствует 'WIFF'.*/
SELECT FLOOR(SUM(total)) AS S1, SUM(total) as SalesVolume
FROM product 
JOIN item ON product.product_id = item.product_id
WHERE description LIKE '%WIFF%'