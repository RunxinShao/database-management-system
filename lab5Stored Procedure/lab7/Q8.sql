DELIMITER $$
CREATE PROCEDURE my_proc_CASE 
(INOUT no_employees INT, IN salary INT)
BEGIN
CASE
WHEN (salary>10000) 
THEN (SELECT COUNT(job_id) INTO no_employees 
FROM jobs 
WHERE min_salary>10000);
WHEN (salary<10000) 
THEN (SELECT COUNT(job_id) INTO no_employees 
FROM jobs 
WHERE min_salary<10000);
ELSE (SELECT COUNT(job_id) INTO no_employees 
FROM jobs WHERE min_salary=10000);
END CASE;
END$$
DELIMITER ;
CALL my_proc_CASE(@C,10001);
SELECT @C;
CALL my_proc_CASE(@C,9999)$$
SELECT @C$$
CALL my_proc_CASE(@C,10000)$$
SELECT @C$$
