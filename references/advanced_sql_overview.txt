SELECT e.fname, e.minit, e.lname, e.ssn, e.salary, e.dno
FROM employee e
JOIN dept_locations dl ON e.dno = dl.dnumber
WHERE dl.dlocation = 'HOUSTON';
