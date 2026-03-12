SELECT 	DISTINCT pnumber
FROM 	project, department, employee 
WHERE 	dnum =  dnumber
  AND  	mgr_ssn = ssn
  AND 	lname = 'SMITH'
UNION all
SELECT 	DISTINCT pnumber
FROM  	project, works_on, employee
WHERE 	pnumber =  pno
  AND 	essn = ssn
  AND  	lname = 'SMITH';