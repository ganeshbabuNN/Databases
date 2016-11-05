
select XMLELEMENT("EmployeeDetaisl", 
       XMLELEMENT("EmployeeNo",employee_id),
       XMLELEMENT("Name",first_name||' '|| last_name),
       XMLELEMENT("Phone",phone_number),
       XMLELEMENT("email",email),
       XMLELEMENT("JoinedDate",to_char(hire_date,'DD/MM/YYY')))employee
from employees;

/*To be structured in the below way
  <EmployeeDetaisl>
	<EmployeeNo>999</EmployeeNo>
	<Name>ganesh Babu</Name>
	<Phone>232</Phone>
	<email>gaa@baba.com</email>
	<JoinedDate>13/10/015</JoinedDate>
  </EmployeeDetaisl>
*/

/*
to see all the XML returned by the subsequent queries issues the folloing command
set long 500 -- long controls the maximum length of text data displayed by SQLPlus

*/