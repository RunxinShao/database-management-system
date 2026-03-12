drop table student;
create table student(
 sno varchar(10),
 sname varchar(20),
 sage int(2),
 ssex varchar(5),
 constraint pk_student primary key (sno)
);
ALTER TABLE student
 DROP PRIMARY KEY;



