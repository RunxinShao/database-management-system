SELECT sc.sno,st.sname,count(cno) FROM student st
  	LEFT JOIN sc
  	ON sc.sno=st.sno
  	GROUP BY st.sname,sc.sno HAVING count(cno)=1;




























