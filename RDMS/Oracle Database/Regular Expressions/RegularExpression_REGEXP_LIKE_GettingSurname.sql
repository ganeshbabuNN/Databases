--getting the surname
select * from employees
where regexp_like (first_name,'[[:space:]]');

/*
[[:space:]]- indicates a string that holds a space, which immediately followed by character.
*/

