SELECT cno,AVG(score) 
	FROM sc 
	GROUP BY cno 
	ORDER BY AVG(score) asc, cno desc;




























