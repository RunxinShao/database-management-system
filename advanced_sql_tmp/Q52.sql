SELECT sno,avg(score)FROM sc
  	WHERE sno IN
  	(SELECT sno FROM sc WHERE sc.score < 60
  	GROUP BY sno HAVING count(sno)>1 )
  	GROUP BY sno;




























