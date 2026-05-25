use information_schema;
show tables;
desc tables;
desc statistics;
select table_name, table_rows, avg_row_length, data_length
from information_schema.tables 
where table_name = 'EMPLOYEE’;
select * from information_schema.statistics;

