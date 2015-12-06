--getting 2nd occurrences of book name that hold world "and" followed by a space
select department_id,department_name,
regexp_INSTR (department_name,'And[[:space:]]',1,1) position_of_2nd_of_and 
from departments;

/*
'And[[:space:]]',1,1-indicates a string hold a word "And", followed by space.
the second parameter indicates to begin the search from the first character.
the third parameter indicates to consider the second occurrence
*/

