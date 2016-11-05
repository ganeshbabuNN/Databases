--view 
drop view vlocations;
create view vlocations as
select location_id, Street_address || ','|| postal_code Address from locations;

--- get the address which holds six digits pincode along with the address
select location_id,Address,
regexp_INSTR (Address,'[[:digit:]]{6}$') pincodePosition from vlocations;

/*
[[:digit:]]- Indicates only the digits,
[[:digit:]]{6}-indicates 6 consecutive digits
[[:digit:]]{6}$ - indicates a string that ends with 6 consecutive digits
*/

