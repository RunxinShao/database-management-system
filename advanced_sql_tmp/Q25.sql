SELECT * FROM sc WHERE sno<>'s001'
    MINUS
    (
    SELECT* FROM sc
    MINUS
    SELECT * FROM sc WHERE sno='s001'
);

























