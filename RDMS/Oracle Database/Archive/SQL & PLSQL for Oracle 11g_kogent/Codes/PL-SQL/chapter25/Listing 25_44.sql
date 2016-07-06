create or replace procedure putdeptcol( x  out deptcol) as
cursor c1 is select deptno,deptname from dept;
y deptobj;
begin
 	x := deptcol();
 	for z in c1 loop
  		x.extend;
  		y := deptobj(z.deptno,z.deptname);
  		x(x.last):=y;
	end loop;
end;
/
