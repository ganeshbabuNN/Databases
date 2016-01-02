SQL> BREAK ON deparmtent_id SKIP Page on department_id SKIP 1
SQL> COMPUTE SUM OF salary on department_id
SQL> select department_id,salary from employees order by department_id;

DEPARTMENT_ID     SALARY
============= ==========
          100    3062.61
                 3062.61
************* ----------
sum             18375.66

          110    3062.61
                 3062.61
************* ----------
sum              6125.22

                 3062.61

DEPARTMENT_ID     SALARY
============= ==========
************* ----------
sum              3062.61

/*
summary line can be calculated and printed based on all values in a column by using BREAK and COMPUTE in the following forms
*/

SQL> BREAK ON REPORT
SQL> COMPUTE SUM OF salary ON REPORT
SQL> select job_id,department_id,salary from employees order by department_id;

/*
To print a grand total[or grand average,grand maximum and so on ] in additions to subtotals[or sub-average and so on],include break column and an ON REPORT clause in the BREAK command and then enter on COMPUTE command for the break column and another to compute on REPORT
*/

SQL> BREAK ON DEPARTMENT_id skip page on report
SQL> compute sum of salary on department_id
SQL> compute sum of salary on report
SQL> select department_id,first_name,salary from employees order by department_id;

/*
Multiple summary lines can be printed on the same break column.To do so, include the function for each summary line , in the COMPUTE command as follows
*/
SQL> BREAK ON department_id skip page on report
SQL> compute sum avg of salary on department_id
SQL> compute sum of salary on report
SQL> select department_id,first_name,salary from employees order by department_id;

DEPARTMENT_ID FIRST_NAME               SALARY
============= ==================== ==========
           10 Jennifer                 612.52
              ganesh
*************                      ----------
avg                                    612.52
sum                                    612.52