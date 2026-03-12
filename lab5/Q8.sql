SELECT 	E.fname, E.lname, S.fname, S.lname
  FROM 	employee AS E, employee AS S
 WHERE 	E.super_ssn = S.ssn;