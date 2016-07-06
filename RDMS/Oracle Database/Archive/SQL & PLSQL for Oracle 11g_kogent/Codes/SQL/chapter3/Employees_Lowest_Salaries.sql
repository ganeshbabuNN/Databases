select ename
    from emp_company
    where salary > any(select salary from emp_company);
