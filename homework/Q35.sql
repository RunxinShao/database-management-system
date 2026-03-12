SELECT cno,AVG(score),SUM(case when score>=60 then 1 else 0 end)/count(*)
    as passedRate
    FROM sc GROUP BY cno
    ORDER BY avg(score) , passedRate desc;




























