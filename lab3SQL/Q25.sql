SELECT      pnumber, pname, COUNT(*)
FROM        project, works_on
WHERE       pnumber=pno
GROUP BY pnumber, pname;
