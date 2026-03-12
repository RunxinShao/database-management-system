SELECT a.* FROM
    (SELECT * FROM sc a WHERE a.cno='c001') a,
    (SELECT * FROM sc b WHERE b.cno='c002') b
    WHERE a.sno=b.sno AND a.score > b.score;
SELECT * FROM sc a
    WHERE a.cno='c001'
    AND EXISTS(SELECT * FROM sc b WHERE b.cno='c002' AND a.score>b.score
    AND a.sno = b.sno);



























