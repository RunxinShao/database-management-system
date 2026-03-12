SELECT * FROM sc
  	LEFT JOIN student st
  	ON st.sno=sc.sno
  	WHERE sc.sno<>'s001'
  	AND sc.cno IN
  	(SELECT cno FROM sc
  	WHERE sno='s001');




























