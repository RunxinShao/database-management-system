SELECT dno, COUNT(*), AVG(salary)
FROM   employee
GROUP BY dno;
