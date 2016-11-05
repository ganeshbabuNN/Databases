insert into enquiry values(1,'anil',’ ',1,1,'mgroad','mumbai',4456,789,'12-		jun-2006',1,1);
edit p4				-- write following program in file P4
declare
	x date;
begin
	x := enq_analysis.finddate(1);
	dbms_output.put_line(x);
end;
/
@p4
