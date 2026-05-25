DELIMITER $$
CREATE PROCEDURE my_procedure_cursors(INOUT return_val INT)
BEGIN
DECLARE a,b INT; 
DECLARE cur_1 CURSOR FOR 
SELECT max_salary FROM jobs;
DECLARE CONTINUE HANDLER FOR NOT FOUND SET b = 1;
OPEN cur_1;
REPEAT FETCH cur_1 INTO a;
UNTIL b = 1 
END REPEAT;
CLOSE cur_1;
SET return_val = a;
END;
$$
DELIMITER ;
CALL my_procedure_cursors(@R);
SELECT @R;
