/*
-this functions computes the rank of row in an ordered group of rows. the ranks are consective integer begining with 1.
-this funcitons does skip numbers and assigns the next number to those rows with the same value.
*/

select department_id,
       first_name,
       salary,
       RANK()OVER(partition by department_id order by salary ASC) topTwoProducts
from employees;

