SELECT cno,count(sno) 
  	FROM sc GROUP BY cno
  	HAVING count(sno)>10
  	ORDER BY count(sno) desc,cno asc;




























