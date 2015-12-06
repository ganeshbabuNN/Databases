--view 
drop view vemployeess;
create view vemployeess as
select employee_id, last_name || ','|| first_name name1 from employees;

select * from vemployeess;
--repalce last name to first name and first name to last name
select regexp_replace(name1,'(.*)(.*)(.*)','\2 \1') vemployeess from vemployeess;

/*
(.*)(.*)(.*)- indicates three different sub-expressions. each retrieving a set of characters till a space is encourtered
-once the value is retrieved, in this case bing last name , first name. they can be reformatted as desired using back references.
-since three sub-expression are used three back references are created.
-the first sub-expression is assigned \1, the second \2 and so on
-these backreference are used in the last parameter of this funciton as \2 \1 which effectively
returns the replacement substring and places them in the desired format[including comma and spaces]

*/