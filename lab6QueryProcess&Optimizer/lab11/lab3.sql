use sanjose;
delete from employee where ssn = “333445555”;
select table_name, table_rows, avg_row_length, data_length
from information_schema.tables 
where table_name = 'EMPLOYEE’;
analyze table employee;
select table_name, table_rows, avg_row_length, data_length
from information_schema.tables 
where table_name = 'EMPLOYEE’;

