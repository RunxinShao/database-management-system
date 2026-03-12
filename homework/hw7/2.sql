SELECT e.fname, e.lname, dl.dlocation
FROM employee e
JOIN dept_locations dl ON e.dno = dl.dnumber
ORDER BY dl.dlocation, e.lname;
