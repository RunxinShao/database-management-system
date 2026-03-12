insert into student values ('s003','BILL',25,'M');
insert into student values ('s004','STEVE',20,'F');
insert into student values ('s005','BAKR',20,'F');
insert into student values ('s006','TOM',21,'M');
insert into student values ('s007','JERRY',21,'M');
insert into student values ('s008','MACY',21,'F');
insert into student values ('s009','MICK',23,'F');
insert into student values ('s010','COOKER',22,'F');
commit;

insert into teacher values ('t001', 'JAMES');
insert into teacher values ('t002', 'MARSHALL');
insert into teacher values ('t003', 'BABER');
commit;
insert into course values ('c001','J2SE','t002');
insert into course values ('c002','Java Web','t002');
insert into course values ('c003','SSH','t001');
insert into course values ('c004','Oracle','t001');
insert into course values ('c005','SQL SERVER 2005','t003');
insert into course values ('c006','C#','t003');
insert into course values ('c007','JavaScript','t002');
insert into course values ('c008','DIV+CSS','t001');
insert into course values ('c009','PHP','t003');
insert into course values ('c010','EJB3.0','t002');
commit;
insert into sc values ('s001','c001',78.9);
insert into sc values ('s002','c001',80.9);
insert into sc values ('s003','c001',81.9);
insert into sc values ('s004','c001',60.9);
insert into sc values ('s001','c002',82.9);
insert into sc values ('s002','c002',72.9);
insert into sc values ('s003','c002',81.9);
insert into sc values ('s001','c003','59');
commit;























