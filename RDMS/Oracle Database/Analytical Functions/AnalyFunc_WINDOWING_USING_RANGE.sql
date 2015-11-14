select department_id,
       first_name,
       employee_id,
       hire_date,
       hire_date-50 "Prior50Days",
       salary,
       AVG(salary) OVER(order by salary ASC RANGE 100 PRECEDING) AVGSALARY
from employees;

select department_id,
       first_name,
       employee_id,
       hire_date,
       hire_date-50 "Prior50Days",
       salary,
       AVG(salary) OVER(order by hire_date ASC RANGE 50 PRECEDING) AVGSALARY
from employees
order by hire_date;

/*
DEPARTMENT_ID FIRST_NAME           EMPLOYEE_ID HIRE_DATE Prior50Days     SALARY  AVGSALARY
------------- -------------------- ----------- --------- ----------- ---------- ----------
           90 Lex                          102 13-JAN-01 24-NOV-00        17000      17000 
           40 Susan                        203 07-JUN-02 18-APR-02         6500       9202 
          110 Shelley                      205 07-JUN-02 18-APR-02        12008       9202 
           70 Hermann                      204 07-JUN-02 18-APR-02        10000       9202 
          110 William                      206 07-JUN-02 18-APR-02         8300       9202 
 
ID=205, salary 12008,shelly
SUMSALARY= price of the current row + RANGE OF THE FROM  18-APR-02 till 07-JUN-02
SUMSALARY=  (12008+ 6500 +10000+8300)/4
SUMSALARY=  9202


*/

select department_id,
       first_name,
       employee_id,
       hire_date,
       salary,
       SUM(salary) OVER(order by salary RANGE 2 PRECEDING) SUMSALARY
from employees;