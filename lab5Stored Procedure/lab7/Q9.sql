DELIMITER $$
DROP TABLE number$$
CREATE TABLE number (num decimal)$$
CREATE PROCEDURE my_proc_LOOP (IN num INT)
BEGIN
DECLARE x INT;
SET x = 0;
loop_label: LOOP
INSERT INTO number VALUES (rand());
SET x = x + 1;
IF x >= num 
THEN
LEAVE loop_label;
END IF;
END LOOP;
END$$
DELIMITER ;
CALL my_proc_LOOP(3);
select * from number;
