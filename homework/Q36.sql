SELECT max(t.tno),max(t.tname),max(c.cno),max(c.cname),c.cno,avg(score) 
FROM sc , course c,teacher t
    WHERE sc.cno=c.cno AND c.tno=t.tno
    GROUP BY c.cno
    ORDER BY avg(score) desc;



























