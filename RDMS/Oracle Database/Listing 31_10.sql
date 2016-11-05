declare
x number;
y number;
function findenqno (fname1 varchar2) return number is -–function 1
enqno1 number (5);
begin
	select enquiryno
	into enqno1
	from enquiry
	where fname = fname1;
	return(enqno1);
end;
function findenqno (refcode1 number) return number is -–function 2
enqno1 number (5);
begin
	select enquiryno
	into enqno1
	from enquiry
	where refcode = refcode1;
	return (enqno1);
end;
begin
					-- You call the function as:
	X := findenqno ('Anil');
	dbms_output.put_line('using name '||x);
	Y := findenqno (345);
	dbms_output.put_line('using refcode '||y);
end;
/
