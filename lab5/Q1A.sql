SELECT 	fname, employee.lname, address
  FROM 	employee, department
 WHERE 	department.dname = 'RESEARCH'
   AND  department.dnumber = employee.dno;

SELECT 	fname, employee.lname, address
  FROM  (employee join department on dno = dnumber)
 WHERE  dname = 'RESEARCH';