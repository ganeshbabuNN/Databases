create type typAddress
AS Varray(2) of varchar2(1000)
/

/*
this command creates a VARRAY named typAddress, which can hold a maximum of 2 elements of data type varchar2(1000) i,e two entires per record, each storing publisher address details.
*/

--table created
create Table publisherAddress(
publisherName Varchar2(50),
Address typAddress);
