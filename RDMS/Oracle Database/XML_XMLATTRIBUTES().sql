select XMLELEMENT("EmployeeDetais", 
       XMLATTRIBUTES(employee_id as "ID"),
       XMLELEMENT("Name",first_name||' '|| last_name),
       XMLELEMENT("Phone",phone_number),
       XMLELEMENT("email",email),
       XMLELEMENT("JoinedDate",to_char(hire_date,'DD/MM/YYYY')))employee
from employees
where employee_id=100;

/*
here parent element, for every set of employee details is defined. An Attribute is a set for this elements holds the employeeID as the Attribute Value.

<EmployeeDetais ID="100">  --- ID is a attributes
<Name>Steven King</Name>
<Phone>515.123.4567</Phone>
<email>SKING</email>
<JoinedDate>17/06/2003</JoinedDate>
</EmployeeDetais>


*/