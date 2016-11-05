Create or replace procedure sum (X number default 10,
Y number default 20, Z OUT number) is
begin
	Z := X + Y;
end;
/
