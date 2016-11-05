SELECT XMLCONCAT(
       XMLELEMENT("EmployeeNo",employee_id),
       XMLELEMENT("Name",First_name ||' '||last_name),
       XMLELEMENT("phone",Phone_number),
       XMLELEMENT("JoinDate",to_char(hire_date,'DD/MM/YYYY'))) 
       employees
FROM employees
where employee_id=100;


/*
<EmployeeNo>100</EmployeeNo>
<Name>Steven King</Name>
<phone>515.123.4567</phone>
<JoinDate>17/06/2003</JoinDate>
*/