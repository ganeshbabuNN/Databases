create table expaudit
	(expcode number(5),
  	username varchar2(30),
  	expdate date);




/*This table stores information of the user who has entered information in 		expenditure and at which datetime the information is entered */

declare
	cursor c1 is 
	select * 
	from expaudit;
begin
	for z in c1 loop
		dbms_output.put_line(to_char(z.expcode)||'  							'||to_char(z.expdate)||' '||z.username );
	end loop;
end;
/