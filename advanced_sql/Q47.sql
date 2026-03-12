SELECT st.sname,score FROM student st,sc ,course c,teacher t
  	WHERE st.sno=sc.sno AND sc.cno=c.cno AND c.tno=t.tno
  	AND t.tname='MARSHALL' AND sc.score=
  	(SELECT max(score)FROM sc WHERE sc.cno=c.cno);



























