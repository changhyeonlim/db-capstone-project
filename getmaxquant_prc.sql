DROP PROCEDURE IF EXISTS GetMaxQuantity;
DELIMITER //
BEGIN
CALL PROCEDURE GetMaxQuantity()
SELECT MAX(Quantity) AS "Max Quantity in Order" FROM orders
END// DELIMITER ;

CALL GetMaxQuantity();
