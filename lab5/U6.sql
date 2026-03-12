UPDATE employee

SET salary=salary*1.1 

WHERE dno IN (SELECT dnumber
                FROM department

                WHERE dname = 'RESEARCH');
