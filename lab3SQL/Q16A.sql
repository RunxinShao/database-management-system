SELECT 	E.fname, E.lname 
FROM  	employee E, dependent D 
WHERE 	E.ssn=D.essn 
  AND  	E.sex=D.sex
  AND  	E.fname=D.dependent_name;