DROP PROCEDURE IF EXISTS PrintNumbersBetween;
DELIMITER //
CREATE PROCEDURE PrintNumbersBetween(IN A INT, IN B INT)
BEGIN
	DECLARE RESULT VARCHAR (100);
	DECLARE I INT;
	SET I=A+1;
	SET RESULT="";
	WHILE I<B DO
		SET RESULT=CONCAT(RESULT, I, " ");
		SET I=I+1;
	END WHILE;
	SELECT RESULT;
END//
DELIMITER ;

