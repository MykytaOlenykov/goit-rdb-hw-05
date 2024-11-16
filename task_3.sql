SELECT subquery.order_id, AVG(subquery.quantity) AS avg_quantity
FROM (
	SELECT * FROM order_details
	WHERE order_details.quantity > 10
) AS subquery
GROUP BY subquery.order_id;
