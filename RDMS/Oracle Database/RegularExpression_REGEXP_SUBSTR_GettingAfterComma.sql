--view 
drop view vlocations;
create view vlocations as
select location_id, Street_address || ','|| postal_code Address from locations;

--only displays the building address
select location_id,Address,
regexp_SUBSTR (Address,',[^,]*,') position_of_2nd_of_and 
from vlocations;

/*
,[^,]*,-indicates the string that begins with a comma[indicated by,] followed by a space
with zero or more characters that are not commas,[Indicated by[^,]*] and further followed by 
another comma[indicated by,].
*/

