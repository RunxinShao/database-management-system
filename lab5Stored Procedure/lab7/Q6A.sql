DELIMITER $$
CREATE PROCEDURE my_proc_IN (IN var1 INT)
BEGIN
SELECT * FROM jobs LIMIT var1;
END$$
DELIMITER ;
CALL my_proc_in(2);
CALL my_proc_in(5);
