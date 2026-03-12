drop table depts_info;
CREATE TABLE depts_info
(dept_name varchar(15), 
no_of_emps int(2), 
total_sal int(6));
INSERT INTO depts_info (dept_name, no_of_emps, total_sal)
SELECT dname, count(*), sum(salary) 
FROM department, employee 
WHERE dnumber = dno 
GROUP BY dname;
select * from depts_info;