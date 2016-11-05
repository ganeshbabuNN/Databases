declare
zename varchar2(20);
procedure printsalary(pename in varchar2) is
x number;
begin
 select salary
 into x
 from emp_company
 where ename=pename;
 dbms_output.put_line(x);
end;
begin
 printsalary('ANIL'); -- call to procedure
 zename:='SUNIL';
 printsalary(zename);
end;
/
