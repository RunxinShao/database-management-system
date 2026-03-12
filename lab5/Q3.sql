SELECT 	fname, lname 
FROM 	employee
WHERE 	NOT EXISTS (
	SELECT pnumber FROM project WHERE dnum=4
	AND pnumber NOT IN 
	(SELECT pno FROM works_on WHERE employee.ssn=works_on.essn)
);
