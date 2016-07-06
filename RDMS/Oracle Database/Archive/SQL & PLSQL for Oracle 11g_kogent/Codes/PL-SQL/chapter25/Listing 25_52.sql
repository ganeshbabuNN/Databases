declare 
    type name is table of emp_tab4.ename%type; 
    type sal is table of emp_tab4.salary%type; 
    cursor c1 is select ename, salary from emp_tab4 where salary > 1000; 
    names name; 
    sals  salary; 
 begin 
    open c1; 
    fetch c1 bulk collect into names, sals; 
    close c1; 
 end; 
 /
