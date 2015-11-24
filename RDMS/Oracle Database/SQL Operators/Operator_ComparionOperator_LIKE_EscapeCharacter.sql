--since the %character is escaped, this query will retrieve all customer whose name is %
select first_name from employees where first_name like '!%' ESCAPE '!';

--the query returns of those names whose name begins with the letter S and ends with the character %
select first_name from employees where first_name like 'G%!%' ESCAPE '!';

--the query returns all those customers whose name beings with a letter S and ends with a character _.
select first_name from employees where first_name like 'S%!_' ESCAPE '!';