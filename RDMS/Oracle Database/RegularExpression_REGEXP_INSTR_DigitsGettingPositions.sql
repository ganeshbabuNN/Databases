--getting start position of the digit if one exists in the customers address
select location_id,street_address,vsize(street_address),
regexp_INSTR (street_address,'[[:digit:]]') DigitalPosition from locations;

/*
[[:digit:]]- Indicates only the digits, this is passed to regexp_instr function that returns
the position of the first in the string.
*/

