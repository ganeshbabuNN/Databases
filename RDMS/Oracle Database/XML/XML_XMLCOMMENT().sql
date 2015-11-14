SELECT XMLELEMENT("EmployeeDetails",
       XMLCOMMENT('The employee Identity number'),
       XMLELEMENT("EmployeeNo",employee_id),
       XMLCOMMENT('The employee name'),
       XMLELEMENT("Name",First_name ||' '||last_name),
       XMLCOMMENT('Phone Number'),
       XMLELEMENT("phone",Phone_number),
       XMLCOMMENT('Joined Date'),
       XMLELEMENT("JoinDate",to_char(hire_date,'DD/MM/YYYY'))) 
       employees
FROM employees
where employee_id=100;




/*
<EmployeeDetails>
<!--The employee Identity number-->
<EmployeeNo>100</EmployeeNo>
<!--The employee name-->
<Name>Steven King</Name>
<!--Phone Number-->
<phone>515.123.4567</phone>
<!--Joined Date-->
<JoinDate>17/06/2003</JoinDate>
</EmployeeDetails>
*/