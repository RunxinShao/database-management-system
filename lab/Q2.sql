SELECT 	pnumber, dnum, lname, address, bdate 
FROM project, department, employee 
WHERE dnum=dnumber 
AND mgr_ssn = ssn 
AND plocation = 'STAFFORD';