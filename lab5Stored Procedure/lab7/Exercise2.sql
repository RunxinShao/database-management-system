USE hr;

-- Exercise 2: Creating Trigger for AFTER UPDATE

DELIMITER $$
CREATE TRIGGER stu_mast_AUPD
AFTER UPDATE ON student_mast
FOR EACH ROW
BEGIN
    INSERT INTO stu_log
    VALUES (NEW.STUDENT_ID,
            CONCAT('Student class updated from ', OLD.ST_CLASS, ' to ', NEW.ST_CLASS));
END$$
DELIMITER ;

-- Promote all students to the next class
SET SQL_SAFE_UPDATES = 0;
UPDATE student_mast SET ST_CLASS = ST_CLASS + 1;
SET SQL_SAFE_UPDATES = 1;

-- Verify results
SELECT * FROM student_mast;
SELECT * FROM stu_log;
