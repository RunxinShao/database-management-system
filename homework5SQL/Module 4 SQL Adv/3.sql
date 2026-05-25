SELECT MAX(e.salary) AS highest_salary
FROM employee e
JOIN dept_locations dl ON e.dno = dl.dnumber
WHERE dl.dlocation = 'HOUSTON';
