create or replace package sample as x number;
procedure updatebatch (rlno in number, amt in number);
function calcourseamt (code number) return number ;
end sample; 
/

create or replace package body sample as y number;
procedure sum_n_sub(a in number,b in number,c out number,d out number) is
e number: = 0;
begin
	c := a+b;
	d := a-b;
	return;
end; 						--end of proc sum_n

procedure updatebatch(rlno in number, amt in number) is bcode number;
begin 
	select batchcode
	into bcode
	from enrollment
	where rollno = rlno;
	update batch
	set netincome = netincome + amt
	where batchcode = bcode;
end updatebatch;
function calcourseamt (code number) return number is netincomeamt number;
begin
	select sum(netincome)
	into netincomeamt from batch
	where coursecode = code;
	return (netincomeamt);
end calcourseamt;
end sample;
/
--following are sample calls
		--sample.x
		--sample.updatebatch( );
		--error sample.sum_n_sub
