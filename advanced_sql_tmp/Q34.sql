SELECT sno,sname,sage,ssex 
    FROM student t 
    WHERE DATE_FORMAT(SYSDATE(), '%Y')-sage >= 1992;




























