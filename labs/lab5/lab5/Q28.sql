SELECT     dnumber, COUNT(*)
FROM       department, employee
WHERE      dnumber=dno AND salary>25000 
AND    	   dno in (SELECT  dno
                   FROM    employee
                   GROUP BY dno
                   HAVING  COUNT(*)>3)
GROUP BY dnumber;
