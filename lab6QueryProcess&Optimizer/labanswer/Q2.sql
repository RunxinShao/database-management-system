-- Q2.sql: Subquery (accessing at least 2 tables)
-- Find employees who work in the Research department
SELECT fname, lname FROM employee
WHERE dno IN (SELECT dnumber FROM department WHERE dname = 'RESEARCH');

-- Check execution plan
EXPLAIN SELECT fname, lname FROM employee
WHERE dno IN (SELECT dnumber FROM department WHERE dname = 'RESEARCH');

-- Try with HINT: ignore department primary key
EXPLAIN SELECT fname, lname FROM employee
WHERE dno IN (SELECT dnumber FROM department IGNORE INDEX (PRIMARY) WHERE dname = 'RESEARCH');
