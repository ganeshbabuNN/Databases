declare
	xcname varchar2(10);
	xsal number;
	function getsal(pename in varchar2) return number is 		--a
	lsal number;
begin
  	select salary
  	into lsal
  	from emp_company
  	where ename=pename;
  	return lsal;
exception
  	when too_many_rows then
   	return(-1);
  	when no_data_found then
   	return(-1);
end;
function getavgsal(pcname in varchar2) return number is 			--b
lsal number;
begin
  	select avg(salary)
  	into lsal
  	from emp_company
  	where cname=pcname;
  	return lsal;
end;
function getavgsal(pdate1 in date,pdate2 in date) return number is     --c
lsal number;
begin
  	select avg(salary)
  	into lsal
  	from emp_company
  	where jdate between pdate1 and pdate2;
  	return lsal;
end;
procedure getpsal(pename in varchar2,osal out number)  is
lsal number;
begin
	select salary
  	into lsal
  	from emp_company
  	where ename=pename;
  	osal := lsal;
end;
begin
	xsal:= getavgsal('07-jun-91','01-jan-98'); --calling c
	 			--xsal:= getsal('shankar');
 				--xsal:= getavgsal('acc');
	dbms_output.put_line('avg  sal is '||to_char(xsal));
end;
/
