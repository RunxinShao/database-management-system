explain select fname, lname from employee;
explain select ssn from employee;
Create Primary Key of EMPLOYEE on SSN
alter table employee add primary key (ssn);
analyze table employee;
explain select fname, lname from employee;
explain select ssn from employee;

