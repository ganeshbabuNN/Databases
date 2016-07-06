declare 
x number := 0;
y number:=0;
z number;
begin
select salary  into x from emp_company where ename='anil';
select salary into y from emp_company where ename='sunil';
z := x / y;
dbms_output.put_line('+ value is '||to_char(z));
end;
/
