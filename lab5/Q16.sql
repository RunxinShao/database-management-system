SELECT  E.fname, E.lname 
FROM  	employee E 
WHERE 	E.ssn IN (SELECT essn  
 		    FROM dependent  
 		   WHERE E.fname = dependent_name
 		     AND E.sex=sex);