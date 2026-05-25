DELIMITER $$
CREATE PROCEDURE GetUserName(INOUT user_name varchar(16),
IN user_id varchar(16))
BEGIN
DECLARE uname varchar(16);
SELECT name INTO uname
FROM user
WHERE userid = user_id;
IF user_id = "scott123" 
THEN
SET user_name = "Scott";
ELSEIF user_id = "ferp6734" 
THEN
SET user_name = "Palash";
ELSEIF user_id = "diana094" 
THEN
SET user_name = "Diana";
END IF;
END$$
DELIMITER ;
CALL GetUserName(@A,'scott123');
SELECT @A;
