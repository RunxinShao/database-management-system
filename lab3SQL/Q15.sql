SELECT      dname, lname, fname, pname
FROM        department, employee, works_on, project
WHERE       dnumber=dno AND ssn=essn AND pno=pnumber
ORDER BY    dname, lname, fname;
