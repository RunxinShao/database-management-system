SELECT a.sno,a.sname FROM student a
    WHERE a.sno
    NOT IN
    ( SELECT DISTINCT  s.sno
      FROM sc s,
      (  SELECT c.*
        FROM course c ,
        (  SELECT tno
          FROM teacher t
         WHERE tname='MARSHALL' ) t
       WHERE c.tno=t.tno ) b
      WHERE s.cno = b.cno ) ;
SELECT * 
    FROM student st 
    WHERE st.sno 
    NOT IN
    ( SELECT DISTINCT sno 
    FROM sc s 
    JOIN course c ON s.cno=c.cno
    JOIN teacher t ON c.tno=t.tno 
    WHERE tname='MARSHALL' );


























