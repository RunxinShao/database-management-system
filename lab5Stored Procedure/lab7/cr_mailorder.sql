set term off 
spool cr_mailorder.log
Drop table employees cascade constraints;
Drop table parts cascade constraints;
Drop table customers cascade constraints;
Drop table orders cascade constraints;
Drop table odetails cascade constraints;
Drop table zipcodes cascade constraints;
CREATE TABLE employees (eno   number(4),ename    VARCHAR2(18),zip   VARCHAR2(6),hdate  DATE);
INSERT INTO employees VALUES (1000, 'JOHNS','67226','12-DEC-95');
INSERT INTO employees VALUES (1001, 'SMITH','60606','01-JAN-92');
INSERT INTO employees VALUES (1002, 'BROWN','50302','01-SEP-94');
CREATE TABLE parts(
pno 	NUMBER(5),
pname   VARCHAR2(30),
qoh    	number(4),
prices 	number(4,2),
wlevel	number(2));
INSERT INTO parts VALUES (10506,'Land Before Time I',200,19.99,20);
INSERT INTO parts VALUES (10507,'Land Before Time II',156,19.99,20);
INSERT INTO parts VALUES (10508,'Land Before Time III',190,19.99,20);
INSERT INTO parts VALUES (10509,'Land Before Time IV',60,19.99,20);
INSERT INTO parts VALUES (10601,'Sleep Beauty',300,24.99,20);
INSERT INTO parts VALUES (10701,'When Harry Met Sally',120,19.99,30);
INSERT INTO parts VALUES (10800,'Dirty Harry',140,14.99,30);
INSERT INTO parts VALUES (10900,'Dr. Zhivago',100,24.99,30);
CREATE TABLE customers(
cno	NUMBER(4), 
cname	varchar2(18), 
street	varchar2(30),
zip	varchar2(6),
phone	VARCHAR2(15));
INSERT INTO customers VALUES (1111,'CHARES','123 Main St.','67226','316-636-5555');
INSERT INTO customers VALUES (2222,'BERTRAM','237 Ash Ave.','67226','316-689-5555');
INSERT INTO customers VALUES (3333,'BARBARA','111 Inwood St.','60606','316-111-1234');
create table orders(
ono		number(4),
cno		number(4),
eno		number(4),
received	date,
shipped		date);
INSERT INTO orders VALUES (1020,1111,1000,'10-DEC-94','12-DEC-94');
INSERT INTO orders VALUES (1021,1111,1000,'12-JAN-95','15-JAN-95');
INSERT INTO orders VALUES (1022,2222,1001,'13-FEB-95','20-FEB-95');
INSERT INTO orders VALUES (1023,3333,1000,'20-JUN-97',null);
create table odetails(
ono	number(4), 
pno	number(5), 
qty	number(3));
INSERT INTO odetails VALUES (1020,10506,1);
INSERT INTO odetails VALUES (1020,10507,1);
INSERT INTO odetails VALUES (1020,10508,2);
INSERT INTO odetails VALUES (1020,10509,3);
INSERT INTO odetails VALUES (1021,10601,4);
INSERT INTO odetails VALUES (1022,10601,1);
INSERT INTO odetails VALUES (1022,10701,1);
INSERT INTO odetails VALUES (1023,10800,1);
INSERT INTO odetails VALUES (1023,10900,1);
create table zipcodes(
zip	varchar2(6),
city	varchar2(15));
INSERT INTO zipcodes VALUES ('67226','WICHITA');
INSERT INTO zipcodes VALUES ('60606','FORT DODGE');
INSERT INTO zipcodes VALUES ('50302','KANSAS CITY');
INSERT INTO zipcodes VALUES ('54444','COLUMBIA');
INSERT INTO zipcodes VALUES ('66002','LIBERAL');
INSERT INTO zipcodes VALUES ('61111','FORT HAYS');
commit;
spool off
set term on
select * from tab;