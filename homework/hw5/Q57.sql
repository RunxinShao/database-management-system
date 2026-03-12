SELECT st.* FROM sc a
  	JOIN sc b ON a.sno=b.sno
  	JOIN student st
  	ON st.sno=a.sno
  	WHERE a.cno='c001' AND b.cno='c002' AND st.sno=a.sno;




























