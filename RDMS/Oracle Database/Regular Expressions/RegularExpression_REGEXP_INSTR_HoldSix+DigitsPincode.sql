--view 
drop view vlocations;
create view vlocations as
select location_id, Street_address || ','|| postal_code Address from locations;

--address holds either hold a four digits or a four +five digits pincode along with address
select location_id,Address,
regexp_INSTR (Address,'[[:digit:]]{6}(-[[:digit:]]{7})?$') pincodePosition from vlocations;

/*
[[:digit:]]- Indicates only the digits,
[[:digit:]]{6}-indicates 6 consecutive digits
[[:digit:]]{6}(-[[:digit:]]{7})?$- indicates a string that ends with 6 consecutive digits OR a string that ends with nine consecutive digits,
the sub-expression(-[[:digit:]]{7}) is repeated zero or one time, as indicated by the ? repetition operator,
this means the string may end with four digits pincode or a nine [6+7] digit pincode. this is possible as the sub-expression may or may not repeat
*/

