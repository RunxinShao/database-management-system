SELECT st.*,s.score FROM student st
  	JOIN sc s ON st.sno=s.sno
  	JOIN course c ON s.cno=c.cno
  	WHERE s.score <60;



























