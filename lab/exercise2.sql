-- Exercise 2: More Queries with UNIVERSITY database

-- Query 1: Average GPA of all students
SELECT AVG(GPA) AS Average_GPA
FROM students;

-- Query 2: Average GPA of Finance and CIS students
SELECT AVG(GPA) AS Average_GPA
FROM students
WHERE Major IN ('Finance', 'CIS');

-- Query 3: Give the name of the student with the highest GPA
SELECT Name, GPA
FROM students
WHERE GPA = (SELECT MAX(GPA) FROM students);

-- Query 4: Show the students with the GPA grades in each major
SELECT Major, Name, GPA
FROM students
GROUP BY Major, Name, GPA;

-- Query 5: Show the students with the GPA grades in each major ordered by GPA in descending order
SELECT Major, Name, GPA
FROM students
ORDER BY Major, GPA DESC;

-- Query 6: Provide a listing of each student and the name of their tutor (Recursive query)
SELECT S.Name AS Student, T.Name AS Tutor
FROM students S LEFT OUTER JOIN students T
ON S.TutorID = T.StudentID;

-- Query 7: How many students does each tutor work with?
SELECT T.Name AS Tutor, COUNT(*) AS Number_of_Students
FROM students S, students T
WHERE S.TutorID = T.StudentID
GROUP BY T.Name;

-- Query 8: Add .05 to all of the Marketing major's GPA's
UPDATE students
SET GPA = GPA + 0.05
WHERE Major = 'Marketing';

-- Verify Query 8
SELECT * FROM students WHERE Major = 'Marketing';

-- Query 9: Change Sam's tutor from Sue to Jane
UPDATE students
SET TutorID = (SELECT StudentID FROM (SELECT StudentID FROM students WHERE Name = 'Jane') AS tmp)
WHERE Name = 'Sam';

-- Verify Query 9
SELECT S.Name AS Student, T.Name AS Tutor
FROM students S LEFT OUTER JOIN students T
ON S.TutorID = T.StudentID
WHERE S.Name = 'Sam';

-- Query 10: For any student who is currently majoring in CIS and who has a GPA of less than 3.0,
-- change their major to Marketing.
UPDATE students
SET Major = 'Marketing'
WHERE Major = 'CIS' AND GPA < 3.0;

-- Verify Query 10
SELECT * FROM students;
