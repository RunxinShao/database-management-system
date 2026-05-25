explain select d.dname, sum(e.salary)
from employee e, department d
where e.dno = d.dnumber
and e.salary >= 3000
group by d.dname;
Add Primary Key of DEPARTMENT on DNUMBER
alter table department add primary key (dnumber);
explain select d.dname, sum(e.salary)
from employee e, department d
where e.dno = d.dnumber
group by d.dname;

