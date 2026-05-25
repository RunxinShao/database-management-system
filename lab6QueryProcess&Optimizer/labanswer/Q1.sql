-- Q1.sql: Simple query (accessing single table with where)
-- Find employees with salary greater than 30000
SELECT fname, lname, salary FROM employee WHERE salary > 30000;

-- Check execution plan
EXPLAIN SELECT fname, lname, salary FROM employee WHERE salary > 30000;

-- Try with HINT: ignore primary key
EXPLAIN SELECT fname, lname, salary FROM employee IGNORE INDEX (PRIMARY) WHERE salary > 30000;
