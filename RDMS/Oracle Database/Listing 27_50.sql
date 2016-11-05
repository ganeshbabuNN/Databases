insert into emp_ref values (3,
 (select REF(p) 
from empobjtab  p
where p.empid = 1));
