SELECT XMLELEMENT("Employees",
       XMLAGG(
      XMLELEMENT("Names",first_name||' '||last_name)
      ORDER BY first_name)) employees
  FROM employees
  where rownum <4

/*
<Employees>
<Names>Ellen Abel</Names>
<Names>Mozhe Atkinson</Names>
<Names>Sundar Ande</Names>
</Employees>

*/

