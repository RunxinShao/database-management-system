SELECT 	employee.fname, lname, address
  FROM 	employee, department
 WHERE 	dname = 'RESEARCH'
   AND 	dnumber = dno;
