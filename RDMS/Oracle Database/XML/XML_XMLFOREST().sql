select XMLELEMENT("EmployeeDetails",
       XMLFOREST(employee_id AS "ID",
                 first_name||' '|| last_name as "Name",
                 email,
                 phone_number,
                 to_char(hire_date,'DD/MM/YYY') as HireDate))
                 Employee
from employees
where employee_id=100;


/*

<EmployeeDetails>
<ID>100</ID>
<Name>Steven King</Name>
<EMAIL>SKING</EMAIL>
<PHONE_NUMBER>515.123.4567</PHONE_NUMBER>
<HIREDATE>17/06/003</HIREDATE>
</EmployeeDetails>


*/

