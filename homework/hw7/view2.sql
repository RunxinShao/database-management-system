CREATE VIEW V_COURSES_TAKEN AS
SELECT name, major, coursenumber, coursename, semester, year, grade
FROM students, courses
WHERE students.studentid = courses.studentid;

SELECT * FROM V_COURSES_TAKEN;
