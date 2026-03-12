SELECT  fname, lname, 1.1*salary AS INCREASED_SAL
FROM 	employee, works_on, project 
WHERE 	ssn=essn AND pno=pnumber AND pname='PRODUCTX';