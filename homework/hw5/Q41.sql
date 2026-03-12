SELECT st.* FROM student st,
    ( SELECT DISTINCT a.sno FROM
      ( SELECT * FROM sc ) a,
      ( SELECT * FROM sc WHERE sc.sno='s001' ) b
      WHERE a.cno=b.cno ) h
    WHERE st.sno=h.sno AND st.sno<>'s001';




























