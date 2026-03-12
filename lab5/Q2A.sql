SELECT pnumber, dnum, lname, address, bdate
  FROM ((project JOIN department ON dnum = dnumber)
         JOIN employee ON mgr_ssn = ssn)
 WHERE   plocation= "STAFFORD";