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
