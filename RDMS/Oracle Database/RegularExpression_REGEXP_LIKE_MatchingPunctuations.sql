--display the two puncation marks
select * from locations;
update locations
set street_address='ganesh., G.K Nivas.. Road'
where location_id=1000;

select * from locations
where regexp_like (street_address,'[[:punct:]]{2}');

/*
[[:punct:]]{2}- indicates a string that holds 2 punctuation marks
together withing the string[road].
*/

