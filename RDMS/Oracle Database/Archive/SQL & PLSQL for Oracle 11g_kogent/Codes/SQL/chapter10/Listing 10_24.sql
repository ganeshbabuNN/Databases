create view parent_child as
select p.a pa,p.b pb,c.a ca,c.c cc
from newparent p,newchild c
where p.a=c.a;
select * from parent_child;
