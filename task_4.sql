WITH temp AS (
	SELECT * FROM order_details
	WHERE order_details.quantity > 10
)
SELECT order_id, AVG(quantity) AS avg_quantity
FROM temp
GROUP BY order_id;
