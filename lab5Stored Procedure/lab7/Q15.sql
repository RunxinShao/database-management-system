USE hr;
CREATE TABLE log_emp_details (
emp_details int(11),
salary decimal(8,2),
edittime datetime);

DELIMITER $$
CREATE TRIGGER emp_details_AINS 
AFTER INSERT ON employees
FOR EACH ROW
-- Edit trigger body code below this line. Do not edit lines above this one
BEGIN 
INSERT INTO log_emp_details 
VALUES(NEW.employee_id, NEW.salary, NOW());
END$$
DELIMITER ;
select * from log_emp_details;
INSERT INTO employees VALUES (236,'RABI', 'CHANDRA', 'RABI','590.423.45700', STR_TO_DATE('12-JAN-2013', '%d-%M-%Y'),'AD_VP', 15000, NULL, NULL,90);
SELECT * FROM employees WHERE employee_id = 236;
SELECT * FROM log_emp_details;
