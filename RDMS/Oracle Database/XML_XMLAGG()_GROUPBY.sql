
SELECT XMLELEMENT("Departments",
       XMLELEMENT("Department_ID",d.department_id),
       XMLAGG(
       XMLELEMENT("Names",first_name||' '||last_name)
       ORDER BY last_name DESC)) employees
  FROM employees e,departments d
  where e.department_id=d.department_id
  group by d.department_id;

/*
<Departments>
<Department_ID>10</Department_ID>
<Names>Jennifer Whalen</Names>
<Names>Kimberely Grant</Names>
</Departments>

<Departments>
<Department_ID>50</Department_ID>
<Names>Matthew Weiss</Names>
<Names>Alana Walsh</Names>
<Names>Shanta Vollman</Names>
<Names>Peter Vargas</Names>
<Names>Winston Taylor</Names>
<Names>Martha Sullivan</Names>
<Names>Stephen Stiles</Names>
<Names>John Seo</Names>
<Names>Nandita Sarchand</Names>
<Names>Michael Rogers</Names>
</Departments>
*/