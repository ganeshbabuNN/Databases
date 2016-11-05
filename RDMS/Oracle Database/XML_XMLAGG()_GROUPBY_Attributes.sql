--Along with XML Attributes

SELECT XMLELEMENT("Departments",
       XMLATTRIBUTES(d.department_id as "ID"), --- attirbutes
       XMLAGG(
       XMLELEMENT("Names",first_name||' '||last_name)
       ORDER BY last_name DESC)) employees
  FROM employees e,departments d
  where e.department_id=d.department_id
  and employee_id=100
  group by d.department_id;

/*
<Departments ID="90">
<Names>Steven King</Names>
</Departments>
*/