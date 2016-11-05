create or replace procedure calcinstallment (prollno in number, insamt out 		Number) is high_amt exception;
begin
	select sum(amount)
	into insamt from installment
	where rollno=prollno;
	if insamt > 100000 then
		raise high_amt;
	end if;
	exception
	when high_amt then
    	dbms_output.put_line(‘exception raised’);
end calcinstallment;
/
