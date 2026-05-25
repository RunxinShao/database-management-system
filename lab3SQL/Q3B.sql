SELECT      fname, lname
  FROM        employee
 WHERE       NOT EXISTS (SELECT *
                         FROM works_on B
 	                     WHERE (B.pno IN (SELECT pnumber
                                          FROM   project
                                          WHERE  dnum=4)
                           AND NOT EXISTS (SELECT *
 	                                       FROM   works_on C
  	                                       WHERE  C.essn=ssn
  	                                       AND    C.pno=B.pno)));
