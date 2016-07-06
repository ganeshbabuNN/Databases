select ename
    from emp_company
    where salary >= all(select salary from emp_company);
