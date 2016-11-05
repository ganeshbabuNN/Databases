select department_id,
       first_name,
       employee_id,
       hire_date,
       salary,
       MAX(salary) OVER(
       order by hire_date,first_name ASC 
       ROWS BETWEEN 
            UNBOUNDED PRECEDING     ----  
            AND
            1 PRECEDING) SAL_MAX_BEFORE,
       MAX(salary) OVER(
       order by hire_date,first_name ASC 
       ROWS BETWEEN 
            1 FOLLOWING    ----
            AND
            UNBOUNDED FOLLOWING) SAL_MAX_AFTER     
from employees
order by hire_date,first_name;
/*
(*the partition clause is not the only method of limiting the scope of an analytical function, when using a ROWS BETWEEN Clause, rows are ordered and a window is defined.
*on each row , the higest salary before the current row and the higest salary after are returned.The ORDER BY clause is not used here for ranking but for specifying a window.
*UNBOUNDED PRECEDING (the first row), the higest poossible is UNBOUNDED FOLLOWING(the last row)
*Rows preceding and following the current row are reterived with n PRECEDING and n FOLLOWING where n is the relative position to the current row.
*When not specifing BETWEEN , the windows implicity ends at the current row)


DEPARTMENT_ID FIRST_NAME           EMPLOYEE_ID HIRE_DATE     SALARY SAL_MAX_BEFORE SAL_MAX_AFTER
------------- -------------------- ----------- --------- ---------- -------------- -------------
           90 Lex                          102 13-JAN-01      17000                        50000 
           70 Hermann                      204 07-JUN-02      10000          17000         50000 
          110 Shelley                      205 07-JUN-02      12008          17000         50000 
           40 Susan                        203 07-JUN-02       6500          17000         50000 
          110 William                      206 07-JUN-02       8300          17000         50000 
          100 Daniel                       109 16-AUG-02       9000          17000         50000 
          100 Nancy                        108 17-AUG-02      12008          17000         50000 
           30 Den                          114 07-DEC-02      11000          17000         50000 
           50 Payam                        122 01-MAY-03       7900          17000         50000 
           30 Alexander                    115 18-MAY-03       3255          17000         50000 
           30 bab                         1111 18-MAY-03       3255          17000         50000 
           90 Steven                       100 17-JUN-03      24000          17000         50000 
           50 Renske                       137 14-JUL-03       3600          24000         50000 
           10 Jennifer                     200 17-SEP-03       4400          24000         50000 
           50 Trenna                       141 17-OCT-03       3500          24000         50000 
           50 Nandita                      184 27-JAN-04       4200          24000         50000 
           80 Janette                      156 30-JAN-04      11025          24000         50000 
           50 Sarah                        192 04-FEB-04       4000          24000         50000 

*/
                    