-- ============================================
-- HOMEWORK 7 - EXERCISE 2: TRIGGER
-- ============================================
-- Create tables and trigger to log student class promotions
-- ============================================

-- Step 1: Create the student_mast table
-- ============================================
CREATE TABLE student_mast (
    STUDENT_ID INT PRIMARY KEY,
    NAME VARCHAR(100) NOT NULL,
    ST_CLASS INT NOT NULL
);

-- Step 2: Create the stu_log table
-- ============================================
CREATE TABLE stu_log (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    description VARCHAR(255) NOT NULL
);

-- Step 3: Create the trigger for AFTER UPDATE
-- ============================================
-- This trigger logs each student's class promotion after an UPDATE on student_mast

DELIMITER $$

CREATE TRIGGER log_student_promotion
AFTER UPDATE ON student_mast
FOR EACH ROW
BEGIN
    -- Only log if the class has changed
    IF OLD.ST_CLASS != NEW.ST_CLASS THEN
        INSERT INTO stu_log (description)
        VALUES (CONCAT(NEW.STUDENT_ID, ' | student promoted from class ',
                       OLD.ST_CLASS, ' to ', NEW.ST_CLASS));
    END IF;
END$$

DELIMITER ;

-- ============================================
-- TESTING SCRIPT
-- ============================================

-- Insert initial test data
INSERT INTO student_mast (STUDENT_ID, NAME, ST_CLASS) VALUES
(1, 'Alice', 7),
(2, 'Bob', 8);

-- Display initial state
SELECT '=== Initial State of student_mast ===' AS '';
SELECT * FROM student_mast;

-- Execute the UPDATE statement that promotes all students
UPDATE student_mast SET ST_CLASS = ST_CLASS + 1;

-- Display state after update
SELECT '=== State of student_mast after update ===' AS '';
SELECT * FROM student_mast;

SELECT '=== State of stu_log table after update ===' AS '';
SELECT * FROM stu_log;

-- ============================================
-- CLEANUP (Optional - uncomment to remove tables and trigger)
-- ============================================
-- DROP TRIGGER IF EXISTS log_student_promotion;
-- DROP TABLE IF EXISTS stu_log;
-- DROP TABLE IF EXISTS student_mast;
