/*Выбрать список клиентов, среднюю сумму покупок за год, их количество - для клиентов осуществляющих покупки.*/
SELECT Name, AVG(total) AS AverageForTheYear, COUNT(*) AS NumberOfPurchases
FROM customer
JOIN sales_order ON sales_order.customer_id = customer.customer_id 
WHERE total IS NOT NULL
GROUP BY name, YEAR(order_date)
