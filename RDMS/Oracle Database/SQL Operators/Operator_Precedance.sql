select salary,salary+1000 *3 from employees;
/*
multiple operator has a higer precedence that the adiition operator,it multiples value 1000 by 3
and adds the salary
parenthese can be used in the expression to overide operator precedence.
Oracle evalues expression inside parenthese before evaluating those outside.
if an expressoin has nested partheses, the most deeply nested expression is evaluated first
*/

select salary,(salary+1000)*3 from employees;