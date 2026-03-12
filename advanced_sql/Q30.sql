SELECT sno,avg(score) 
    FROM sc 
    GROUP BY sno 
    HAVING avg(score)>60;



























