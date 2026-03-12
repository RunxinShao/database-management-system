DELETE FROM sc
WHERE sc.cno IN
(
 	SELECT cno FROM course c
 	left JOIN teacher t ON c.tno=t.tno
 	WHERE t.tname='MARSHALL'
);




























