select XMLELEMENT("EmployeeNo",employee_id) ||
       XMLELEMENT("Name",first_name||' '|| last_name) ||
       XMLELEMENT("Phone",phone_number) ||
       XMLELEMENT("email",email) ||
       XMLELEMENT("JoinedDate",to_char(hire_date,'DD/MM/YYY'))employee
from employees;

--to be structure in the way
<EmployeeNo>999</EmployeeNo>
<Name>ganesh Babu</Name>
<Phone>232</Phone>
<email>gaa@baba.com</email>
<JoinedDate>13/10/015</JoinedDate>