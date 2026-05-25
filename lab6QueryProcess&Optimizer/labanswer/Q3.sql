-- Q3.sql: Aggregate query including Group By
-- Count employees and average salary per department
SELECT d.dname, COUNT(*) AS emp_count, AVG(e.salary) AS avg_salary
FROM employee e, department d
WHERE e.dno = d.dnumber
GROUP BY d.dname;

-- Check execution plan
EXPLAIN SELECT d.dname, COUNT(*) AS emp_count, AVG(e.salary) AS avg_salary
FROM employee e, department d
WHERE e.dno = d.dnumber
GROUP BY d.dname;

-- Try with HINT: ignore all primary keys
EXPLAIN SELECT d.dname, COUNT(*) AS emp_count, AVG(e.salary) AS avg_salary
FROM employee e IGNORE INDEX (PRIMARY), department d IGNORE INDEX (PRIMARY)
WHERE e.dno = d.dnumber
GROUP BY d.dname;
