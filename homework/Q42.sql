SELECT sc.cno,c.cname,
  	sum(case when score between 85 AND 100 then 1 else 0 end) AS "[100-85]",
  	sum(case when score between 70 AND 85 then 1 else 0 end) AS "[85-70]",
  	sum(case when score between 60 AND 70 then 1 else 0 end) AS "[70-60]",
  	sum(case when score <60 then 1 else 0 end) AS "[<60]"
  	FROM sc, course c
  	WHERE sc.cno=c.cno
  	GROUP BY sc.cno ,c.cname;




























