SELECT st.sname FROM student st
  	WHERE st.sno not IN
  	(SELECT DISTINCT sc.sno FROM sc,course c,teacher t
  	WHERE sc.cno=c.cno AND c.tno=t.tno AND t.tname='MARSHALL');




























