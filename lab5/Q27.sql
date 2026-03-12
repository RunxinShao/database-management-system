SELECT     pnumber, pname, COUNT(*)
FROM       project, works_on,employee
WHERE      pnumber=pno AND ssn=essn AND dno=5
GROUP BY pnumber, pname;
