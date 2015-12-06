---counts number of times of the word "kam"
select regexp_count(street_address,'kam', 1,'i') count1 from locations;


/*
this funciton returns a count of the words "and'in the bookname column
-Backreferences
A Useful features of RE is the abilitye to store sub-expression for resue later.
this is also called backreferencing. 
it allows sophisticated replace capabiliites such as swapping patterns 
in  new positions or indicating repeated word or letter occurrences.
the matched part of the sub-expression is stored in a temporary buffer. the buffer is numbered
from left to right and accessed with the \ digit notations, where digit is a number between 1 and 9
and matches the digitth sub-expression , as indicated by a set of parentheses
*/