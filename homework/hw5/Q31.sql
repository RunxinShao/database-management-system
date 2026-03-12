SELECT a.*,s.sname 
    FROM ( SELECT sno, SUM(score), COUNT(cno) 
    FROM sc 
    GROUP BY sno) a ,student s 
    WHERE a.sno=s.sno ;



























