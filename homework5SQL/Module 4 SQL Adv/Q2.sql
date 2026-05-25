create table teacher(
tno varchar(10),
tname varchar(20) );
create table course(
cno varchar(10),
cname varchar(20),
tno varchar(20) );
create table sc(
sno varchar(10),
cno varchar(10),
score decimal(4,2) );
