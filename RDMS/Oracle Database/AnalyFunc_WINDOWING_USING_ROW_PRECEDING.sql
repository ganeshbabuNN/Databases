select department_id,
       first_name,
       employee_id,
       salary,
       SUM(salary) OVER(partition by department_id order by salary ASC ROWS 2 PRECEDING) SUMSALARY
from employees;

/*

DEPARTMENT_ID FIRST_NAME           EMPLOYEE_ID     SALARY  SUMSALARY
------------- -------------------- ----------- ---------- ----------
           10 Jennifer                     200       4400       4400 
           10 Kimberely                    178     7717.5    12117.5 
           20 Pat                          202       6000       6000 
           20 Michael                      201      13000      19000 
           30 Karen                        119       2500       2500 
           30 Guy                          118       2600       5100 
           30 Sigal                        117       2800       7900 
           30 Shelli                       116       2900       8300 
           30 bab                         1111       3255       8955 
           30 Alexander                    115       3255       9410 
       

Rows 2 preceding allows accessing the previous 2 rows for that salary. this allows summation of the salary of the previous two departments.

SUMSALARY= price of the current row + Prive of the previous Two Department
SUMSALARY= 3255 + (3255+2900)
SUMSALARY= 9410

*/


select department_id,
       first_name,
       employee_id,
       hire_date,
       salary,
       SUM(salary) OVER(order by salary ROWS 2 PRECEDING) SUMSALARY
from employees;

/*
example for Hazel
Rows 2 preceding allows accessing the previous 2 rows for that salary. this allows summation of the salary of the previous two departments.

SUMSALARY= price of the current row + Prive of the previous Two Department
SUMSALARY= 2200+ (2200+2100)
SUMSALARY= 6500



DEPARTMENT_ID FIRST_NAME           EMPLOYEE_ID HIRE_DATE     SALARY  SUMSALARY
------------- -------------------- ----------- --------- ---------- ----------
           50 TJ                           132 10-APR-07       2100       2100 
           50 Steven                       128 08-MAR-08       2200       4300 
           50 Hazel                        136 06-FEB-08       2200       6500 
           50 James                        127 14-JAN-07       2400       6800 
   

*/

select department_id,
       first_name,
       employee_id,
       hire_date,
       salary,
       AVG(salary) OVER(order by salary rows 1 preceding) AVG_SAL   
from employees;

/*
The average is calculated for rows between the previous and the current row. the windows start at the position immediately
preceding the current row and the current row


DEPARTMENT_ID FIRST_NAME           EMPLOYEE_ID HIRE_DATE     SALARY    AVG_SAL
------------- -------------------- ----------- --------- ---------- ----------
           50 TJ                           132 10-APR-07       2100       2100 
           50 Steven                       128 08-MAR-08       2200       2150 
           50 Hazel                        136 06-FEB-08       2200       2200 
           50 James                        127 14-JAN-07       2400       2300 
           50 Ki                           135 12-DEC-07       2400       2400 
           30 Karen         

*/