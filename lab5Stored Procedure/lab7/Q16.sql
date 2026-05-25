USE hr;
DELIMITER $$ ;
CREATE TRIGGER emp_details_BINS 
BEFORE INSERT 
ON employees FOR EACH ROW
-- Edit trigger body code below this line. Do not edit lines above this one
BEGIN
SET NEW.FIRST_NAME = TRIM(NEW.FIRST_NAME);
SET NEW.LAST_NAME = TRIM(NEW.LAST_NAME);
SET NEW.JOB_ID = UPPER(NEW.JOB_ID);
END;$$
DELIMITER ; $$
INSERT INTO employees VALUES (334, ' Ana ', ' King', 'ANA', '690.432.45701', STR_TO_DATE('05-FEB-2013', '%d-%M-%Y'), 'it_prog', 17000, NULL, NULL,90);
SELECT * FROM employees WHERE employee_id = 334;
