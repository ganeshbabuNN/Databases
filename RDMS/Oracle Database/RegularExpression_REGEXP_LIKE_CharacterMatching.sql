--Display all the employee having name beging with S and ending with N.
select employee_id,first_name,last_name,phone_number from employees
where regexp_like (first_name,'^S[A-Z]*N$','i');

/*
^S-indicates the string must begin with S
^S[a-z]* - indicates the string must begin with S and can hold can any number of alphabets 
after the first character S.
^S[a-z]*n$ - indicates the string must begin with S and can hold can any number of alphabets 
after the first character S and the last character in the string must be N.
-the function also passed a value in the third parameter i,e i. this indicates that the search
should be case sensitive
*/

