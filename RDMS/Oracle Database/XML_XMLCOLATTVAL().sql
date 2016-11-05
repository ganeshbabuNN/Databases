
SELECT XMLELEMENT("EmployeesDetails",
       XMLCOLATTVAL(first_name ||' ' ||last_name as "Name",
       email,
       to_char(hire_date,'DD/MM/yyyy') as "JoinedDate"))
       employee
FROM employees
where employee_id=100;


/*
<EmployeesDetails>
<column name = "Name">Steven King</column>
<column name = "EMAIL">SKING</column>
<column name = "JoinedDate">17/06/2003</column>
</EmployeesDetails>
*/
