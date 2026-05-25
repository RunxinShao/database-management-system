DELIMITER $$
CREATE PROCEDURE my_proc_WHILE(IN n INT)
BEGIN
SET @sum = 0;
SET @x = 1;
WHILE @x<n 
DO
   IF mod(@x, 2) <> 0 THEN   
SET @sum = @sum + @x;   
END IF;   
SET @x = @x + 1;   
END WHILE;
END$$
DELIMITER ;
CALL my_proc_WHILE(5);
SELECT @sum;
CALL my_proc_WHILE(10);
SELECT @sum;
