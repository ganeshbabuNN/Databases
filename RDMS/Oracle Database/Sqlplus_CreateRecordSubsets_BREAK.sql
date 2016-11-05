/*
formatting can be added to the subset within the same BREAK command.A summary can also be added by specifying the break column in a COMPUTE Command
*/

SQL> BREAK ON department_id
SQL> select deaprtment_id,first_name,last_name
  2  FROM employees
  3  ORDER BY department_id;

/*
Blank lines can be inserted or new page can be started, each time the value in teh break column changes
*/
SQL> BREAK ON department_Id SKIP 1
SQL> SELECT department_id,first_name
  2  from employees
  3  order by department_id;

--SKIP PAGE
SQL> break on department_id SKIP PAGE
SQL> select department_id,first_name
  2  from employees
  3  order by department_id;

/*
Even blank lines or blank page can be inserted after every row, SKIP PAGE command only skips the number of lines defined to be page and thus it might not cause a physical page break.
*/

SQL> BREAK ON ROW SKIP 1
SQL> Select department_id,first_name
  2  from employees
  3  order by department_id;

/*
to the list the current break definitions, ente rthe break command with no cluase at the SQL prompt,to remove the current 
bak deinitions, enter the CLEAR COmmand with break clause
*/

SQL> BREAK ON ROW SKIP PAGE
SQL> select * from departments;