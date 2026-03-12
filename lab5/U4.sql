DELETE FROM employee
 WHERE lname = 'BROWN';


DELETE FROM employee
 WHERE ssn='123456789';


DELETE FROM employee
 
WHERE dno in (SELECT dnumber
 
                FROM department

               WHERE dname='RESEARCH');

