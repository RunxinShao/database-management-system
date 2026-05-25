create view te_cs
   as select te.tno, te.tname, cs.cno
   from  teacher te, course cs
   where te.tno = cs.tno;










