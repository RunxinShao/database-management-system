-- Exercise 1: Creating and Altering Table

-- Drop tables if they exist (to allow re-running)
SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS courses;
DROP TABLE IF EXISTS students;
SET FOREIGN_KEY_CHECKS=1;

-- 1. Create students table
CREATE TABLE students (
  StudentID INT(5) NOT NULL,
  Name VARCHAR(25),
  Major VARCHAR(15),
  GPA DECIMAL(6,3)
);

-- Describe students table
DESCRIBE students;

-- 2. Create courses table
CREATE TABLE courses (
  StudentID INT(5) NOT NULL,
  CourseNumber VARCHAR(15) NOT NULL,
  CourseName VARCHAR(25),
  Semester VARCHAR(10),
  Year INT(4),
  Grade VARCHAR(2)
);

-- Describe courses table
DESCRIBE courses;

-- 3. ALTER TABLE: Add TutorID column to students
ALTER TABLE students ADD (TutorID INT(5));

-- Describe students table after adding TutorID
DESCRIBE students;

-- 4. ALTER TABLE: Define StudentID as PRIMARY KEY for students
ALTER TABLE students ADD PRIMARY KEY (StudentID);

-- Describe students table after adding PRIMARY KEY
DESCRIBE students;

-- 5. ALTER TABLE: Define StudentID and CourseNumber as PRIMARY KEY for courses
ALTER TABLE courses ADD PRIMARY KEY (StudentID, CourseNumber);

-- Describe courses table after adding PRIMARY KEY
DESCRIBE courses;

-- 6. ALTER TABLE: Define StudentID in courses as FOREIGN KEY referencing students
ALTER TABLE courses ADD FOREIGN KEY (StudentID) REFERENCES students(StudentID);

-- Describe courses table after adding FOREIGN KEY
DESCRIBE courses;

-- 7. Insert data into students table
INSERT INTO students VALUES (101, 'Bill', 'CIS', 3.45, 102);
INSERT INTO students VALUES (102, 'Mary', 'CIS', 3.10, NULL);
INSERT INTO students VALUES (103, 'Sue', 'Marketing', 2.95, 102);
INSERT INTO students VALUES (104, 'Tom', 'Finance', 3.5, 106);
INSERT INTO students VALUES (105, 'Alex', 'CIS', 2.75, 106);
INSERT INTO students VALUES (106, 'Sam', 'Marketing', 3.25, 103);
INSERT INTO students VALUES (107, 'Jane', 'Finance', 2.90, 102);

-- 8. Insert data into courses table
INSERT INTO courses VALUES (101, 'CIS3400', 'DBMS I', 'FALL', 1997, 'B+');
INSERT INTO courses VALUES (101, 'CIS3100', 'OOP I', 'SPRING', 1999, 'A-');
INSERT INTO courses VALUES (101, 'MKT3000', 'Marketing', 'FALL', 1997, 'A');
INSERT INTO courses VALUES (102, 'CIS3400', 'DBMS I', 'SPRING', 1997, 'A-');
INSERT INTO courses VALUES (102, 'CIS3500', 'Network I', 'SUMMER', 1997, 'B');
INSERT INTO courses VALUES (102, 'CIS4500', 'Network II', 'FALL', 1997, 'B+');
INSERT INTO courses VALUES (103, 'MKT3100', 'Advertise', 'SPRING', 1998, 'A');
INSERT INTO courses VALUES (103, 'MKT3000', 'Marketing', 'FALL', 1997, 'A');
INSERT INTO courses VALUES (103, 'MKT4100', 'Marketing II', 'SUMMER', 1998, 'A-');

COMMIT;

-- Verify data
SELECT * FROM students;
SELECT * FROM courses;
