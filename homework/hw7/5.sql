SELECT d.dname, SUM(e.salary) AS total_salaries
FROM department d
JOIN employee e ON d.dnumber = e.dno
GROUP BY d.dname;
