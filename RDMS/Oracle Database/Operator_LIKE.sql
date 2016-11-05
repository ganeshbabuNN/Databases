--- Sh% - all those string that begin with the letter 'Sh' matched
select employee_id,first_name from employees where first_name like 'Sh%';
--- %h - all those string that end with the letter 'h' matched
select employee_id,first_name from employees where first_name like '%h';
--- %Sh% - all those string that starting and ending with the letter '%Sh%' matched
select employee_id,first_name from employees where first_name like '%Sh%';
-- Sunda_ , all those string begin with single letter SH have one letter afters it are matched
select employee_id,first_name from employees where first_name like 'Sunda_';
-- _undar , all those strings that begin with any single letter and end with the letters '_under' are matched
select employee_id,first_name from employees where first_name like '_undar';
-- _unda_ , all those strings that contains letter _unda_ with any single letter as the first letter and as the last letter matched
select employee_id,first_name from employees where first_name like '_unda_';


--miscellanous
select employee_id,first_name from employees where first_name like '___a_';
select employee_id,first_name from employees where first_name like '_a%'
or first_name like '_h%';
select employee_id,first_name from employees where first_name like '___ni%'