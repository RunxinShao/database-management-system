SELECT st.* FROM student st JOIN sc s ON st.sno=s.sno
  	JOIN course c ON s.cno=c.cno
  	JOIN teacher t ON c.tno=t.tno
  	WHERE t.tname='MARSHALL';




























