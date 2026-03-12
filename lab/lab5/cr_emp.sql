-- DROP TABLE employee;
CREATE TABLE employee
(fname            VARCHAR(8),
 minit            VARCHAR(2),
 lname            VARCHAR(8),
 ssn              VARCHAR(9) NOT NULL,
 bdate            DATE,
 address          VARCHAR(27),
 sex              VARCHAR(1),
 salary           INT(7) NOT NULL,
 superssn         VARCHAR(9),
 dno              INT(1) NOT NULL) ;

