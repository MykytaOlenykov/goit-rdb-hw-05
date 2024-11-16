DROP FUNCTION IF EXISTS calcDivision;

DELIMITER //

CREATE FUNCTION calcDivision(
	firstValue FLOAT,
	secondValue FLOAT
)
RETURNS FLOAT
DETERMINISTIC
NO SQL
BEGIN
	DECLARE result FLOAT;
	SET result = firstValue / secondValue;
	RETURN result;
END //

DELIMITER ;

SELECT 
	*, 
	calcDivision(quantity, 10) AS divided_quantity 
FROM order_details;