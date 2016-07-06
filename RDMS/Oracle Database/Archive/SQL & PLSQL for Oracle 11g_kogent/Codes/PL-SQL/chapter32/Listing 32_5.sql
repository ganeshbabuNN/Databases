create or replace package Body PKGbatchcode As 
procedure retrieve_batchno (ccode in number, batchno out number) ;
function validate_coursecode(ccode  number) return boolean is
cursor c1 is 
select 'x'
from course
where coursecode = ccode;
flag boolean;
z c1%rowtype;
begin
	open c1;
	fetch c1 into z;
	if c1%notfound  then 
		flag := false;
	else
		flag := true;
	end if;
	close c1;
	return (flag);
end validate_coursecode;
procedure generate_batchcode(ccode in number,bcode out number) is
flag boolean;
batchno number;
begin
	flag := validate_coursecode(ccode);
	if (flag ) then
		retrieve_batchno(ccode, batchno);
		bcode := ccode * 1000 + batchno;
		update course
		set  lastno = lastno + 1
		where coursecode = ccode;
	else
		raise_application_error(-20110,'invalid-coursecode');
	end if;
end generate_batchcode;
procedure retrieve_batchno (ccode in number, batchno out number) is
begin
	select lastno
	into batchno
	from course
	where coursecode = ccode;
exception
when no_data_found then
	raise_application_error(-20110, 'invalid coursecode');
end retrieve_batchno;
function validate_batchcode (bcode in number) return boolean is 
	flag1 boolean;
	ccode number(2);
	flag2 boolean;
begin
	if length(to_char(bcode))=5 then
		ccode := bcode/1000;
		flag1 := validate_coursecode(ccode);
		if flag1 = true then
			flag2 := true;
		else
			flag2 := false;
		end if;
	else
		flag2 := false;
	end if;
	return (flag2);
end validate_batchcode;
begin
	select user 
	into u1 
	from dual;
	select sysdate
	into date1
	from dual;
   end PKGbatchcode;
/
