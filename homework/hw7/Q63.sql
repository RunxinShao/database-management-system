SELECT st.sno,st.sname,avg(score) FROM student st
  	LEFT JOIN sc
  	ON sc.sno=st.sno
  	GROUP BY st.sno,st.sname HAVING AVG(score) > 85;



























