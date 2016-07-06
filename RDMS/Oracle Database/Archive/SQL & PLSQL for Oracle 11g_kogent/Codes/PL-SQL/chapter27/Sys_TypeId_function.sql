declare
y complex1;
oid varchar2(20);
oid1 varchar2(20);
tname varchar2(30);
begin
y := complex1(5,6);
select sys_typeid(y)
into oid
from dual;
dbms_output.put_line(' sys_typeid(y) '||oid);
select typeid,type_name
into oid1,tname
from user_types
where typeid=oid;
dbms_output.put_line(oid1||'   '||tname);

end;
