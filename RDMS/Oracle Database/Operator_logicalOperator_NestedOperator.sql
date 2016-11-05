SELECT first_name, 
       hire_date ,
       SUM(salary) 
FROM employees
where first_name not like 's%'   --1
AND extract(YEAR FROM hire_date)='2005' 
group by first_name,hire_date
having (sum(salary)>=5000 AND sum(salary) <30000) --2
or (sum(salary) >100 AND sum(salary) <=500); --3

/*
1- this statement filters the records before grouping them
    first_name not like 's%'   
    AND extract(YEAR FROM hire_date)='2005'
2- only those records are grouped and further filtered using the following conditions
  (sum(salary)>=5000 AND sum(salary) <30000) 
  or (sum(salary) >100 AND sum(salary) <=500)
-after grouping all the records that satisfy the first two conditions are returned
    (sum(salary)>=5000 AND sum(salary) <30000)
-if the first two conditions are met, then the next two conditinos are not evaluated fro that row and the row is displayed
-if the first two conditions fails then the next two conditions are evaluated
(sum(salary) >100 AND sum(salary) <=500)
-if the next two conditions are met, then the row is displayed
-if the next two conditions also fails, then the row is not displayed  
-the brackets determine what order the AND/OR conditions are evaluted in.
  (sum(salary)>=5000 AND sum(salary) <30000) --2
  (sum(salary) >100 AND sum(salary) <=500)
-In this case, the first two condtions are in a pair of round brackets, which indicate that these conditions
will be evaluated first followed by the next two conditions
*/`
