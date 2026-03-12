SELECT st.sname, c.cname, sc.score FROM student st,sc,course c
  WHERE sc.sno=st.sno AND sc.cno=c.cno AND sc.score>70;
























