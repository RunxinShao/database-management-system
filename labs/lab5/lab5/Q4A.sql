SELECT 	DISTINCT pnumber
FROM 	project 
WHERE 	pnumber IN (SELECT pnumber 
 		      FROM project, department, employee
  		     WHERE dnum=dnumber  
 		       AND mgr_ssn=ssn  
 		       AND lname = 'SMITH')
    OR 	pnumber IN (SELECT pno 
 		      FROM works_on, employee 
 		     WHERE essn=ssn 
 		       AND lname = 'SMITH');