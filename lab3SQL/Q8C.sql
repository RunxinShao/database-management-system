SELECT E.lname, S.lname
FROM 	employee E left outer join employee S
ON 	E.super_ssn  = S.ssn;