SELECT * FROM student st
  	JOIN sc a ON st.sno=a.sno
  	JOIN sc b ON st.sno=b.sno
  	WHERE a.cno='c002' AND b.cno='c001' AND a.score < b.score;




























