--USING Clause can only be applied to an Equi join and the column in the equi joni must have the same name. 
--this means the primary key column of one table will have the same name as the foreign key column of another table
select first_name,last_name,department_name
from employees inner join 
departments 
using(department_id);