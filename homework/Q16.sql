insert into student values ('s001','JACK',23,'M');
commit;
select * from student;
insert into student (sno, sname, sage)
 values ('s002', 'DANA', 23);
commit;
select * from student;
update student
  set sname = 'BILL', sage = 25, ssex = 'M'
  where sno = 's002';
commit;
update student
  set sname = 'BILL', sage = 25, ssex = 'M';
commit;
delete from student
 where sno = 's001' and sname = 'BILL' 
 and sage = 25 and ssex = 'M';
select * from student;
DELETE FROM student WHERE sno = 's001';
commit;






















