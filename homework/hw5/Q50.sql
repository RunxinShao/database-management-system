SELECT DISTINCT(c.cno),c.cname FROM course c ,sc
  WHERE sc.cno=c.cno;
SELECT cno,cname FROM course c
 	WHERE c.cno IN
 	(SELECT cno FROM sc GROUP BY cno);




























