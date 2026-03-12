UPDATE sc c SET score=
(
SELECT AVG(c.score) 
FROM course a,teacher b
WHERE a.tno=b.tno
AND b.tname='MARSHALL'
AND a.cno=c.cno
GROUP BY c.cno
)
WHERE cno IN
(
 	SELECT cno FROM course a,teacher b
 	WHERE a.tno=b.tno
 	AND b.tname='MARSHALL'
);





























