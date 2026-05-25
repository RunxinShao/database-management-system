SELECT sname,count(*)FROM student 
  	GROUP BY sname 
  	HAVING count(*)>1;




























