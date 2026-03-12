#source ./Q6.sql;
drop table if exists sc;
create table sc(
  sno varchar(10),
  cno varchar(10),
  score decimal(4,2),
  constraint sc_sno_fk foreign key (sno) references student(sno),
  constraint sc_sno_cno_fk primary key (sno,cno)
);




