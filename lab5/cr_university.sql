DROP TABLE students;
DROP TABLE courses;
CREATE TABLE students (
studentid INT(5), 
name VARCHAR(25),
major VARCHAR(15), 
gpa DECIMAL(6,3),
tutorid int(5));
INSERT INTO students VALUES (101, 'Bill', 'CIS', 3.45,  102);
INSERT INTO students VALUES (102, 'Mary', 'CIS', 3.10,  NULL);
INSERT INTO students VALUES (103, 'Sue',  'Marketing', 2.95, 102);
INSERT INTO students VALUES (104, 'Tom',  'Finance', 3.5, 106);
INSERT INTO students VALUES (105, 'Alex', 'CIS', 2.75, 106);
INSERT INTO students VALUES (106, 'Sam',  'Marketing', 3.25, 103);
INSERT INTO students VALUES (107, 'Jane', 'Finance', 2.90, 102);
commit;
Create table courses
(studentid  INT(5) NOT NULL,
coursenumber VARCHAR(15) NOT NULL,
coursename VARCHAR(25), 
semester VARCHAR(10),
year INT(4), 
grade VARCHAR(2));
INSERT INTO courses VALUES (101, 'CIS3400', 'DBMS I', 'FALL', 1997, 'B+');
INSERT INTO courses VALUES (101, 'CIS3100', 'OOP I', 'SPRING', 1999, 'A-');
INSERT INTO courses VALUES (101, 'MKT3000', 'Marketing', 'FALL', 1997, 'A');
INSERT INTO courses VALUES (102, 'CIS3400', 'DBMS I', 'SPRING', 1997, 'A-');
INSERT INTO courses VALUES (102, 'CIS3500', 'Network I', 'SUMMER', 1997, 'B');
INSERT INTO courses VALUES (102, 'CIS4500', 'Network II', 'FALL', 1997, 'B+');
INSERT INTO courses VALUES (103, 'MKT3100', 'Advertizing', 'SPRING', 1998, 'A');
INSERT INTO courses VALUES (103, 'MKT3000', 'Marketing', 'FALL', 1997, 'A');
INSERT INTO courses VALUES (103, 'MKT4100', 'Marketing II', 'SUMMER', 1998, 'A-');
commit;