DELIMITER $$
CREATE PROCEDURE my_proc_INOUT (INOUT empcnt INT, IN dept_id INT)
BEGIN
SELECT COUNT(employee_id) INTO empcnt FROM employees WHERE department_id = dept_id;
END$$
DELIMITER ;
CALL my_proc_INOUT(@C,10);
SELECT @C;
CALL my_proc_INOUT(@C,100);
SELECT @C;
