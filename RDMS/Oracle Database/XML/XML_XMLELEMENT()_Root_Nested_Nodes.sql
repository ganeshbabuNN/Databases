select XMLELEMENT("EmployeeDetais", 
       XMLELEMENT("EmployeeNo",employee_id),
       XMLELEMENT("Name",first_name||' '|| last_name),
       XMLELEMENT("Phone",phone_number),
       XMLELEMENT("email",email),
       XMLELEMENT("JoinedDate",to_char(hire_date,'DD/MM/YYY')),
       XMLELEMENT("LOCATIONS",
       XMLELEMENT("StreeAddress",street_address),
       XMLELEMENT("PostalCode",postal_code),
       XMLELEMENT("City",city),
       XMLELEMENT("State",state_province),
       XMLELEMENT("Country",country_name)
       )
       )employee
from employees e,departments d,countries c,locations l
where e.department_id=d.department_id
and d.location_id=l.location_id
and l.country_id=c.country_id
and employee_id=100;

/* 
meaning informations
<EmployeeDetais>       --root node
<EmployeeNo>100</EmployeeNo>
<Name>Steven King</Name>
<Phone>515.123.4567</Phone>
<email>SKING</email>
<JoinedDate>17/06/003</JoinedDate>
<LOCATIONS>             ---parent node
<StreeAddress>2004 Charade d</StreeAddress>
<PostalCode>98199</PostalCode>
<City>Seattle</City>
<State>Washington</State>
<Country>United States of America</Country>
</LOCATIONS>            --- parent
</EmployeeDetais>
*/