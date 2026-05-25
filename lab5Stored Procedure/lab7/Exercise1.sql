USE hr;

-- Exercise 1: Creating Two Tables

CREATE TABLE student_mast (
    STUDENT_ID INT NOT NULL,
    NAME VARCHAR(50),
    ST_CLASS INT,
    PRIMARY KEY (STUDENT_ID)
);

CREATE TABLE stu_log (
    student_id INT,
    description VARCHAR(255)
);

INSERT INTO student_mast VALUES (1, 'Steven King', 7);
INSERT INTO student_mast VALUES (2, 'Neena Kochhar', 8);
INSERT INTO student_mast VALUES (3, 'Lex De Haan', 8);
INSERT INTO student_mast VALUES (4, 'Alexander Hunold', 10);

SELECT * FROM student_mast;
