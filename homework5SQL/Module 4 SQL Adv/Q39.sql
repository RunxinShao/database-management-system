INSERT INTO sc (sno,cno,score)
SELECT DISTINCT st.sno,sc.cno,(SELECT AVG(score)FROM sc WHERE cno='c002')
FROM student st,sc
WHERE NOT EXISTS
(SELECT * FROM sc WHERE cno='c002' AND sc.sno=st.sno) 
AND sc.cno='c002';




























