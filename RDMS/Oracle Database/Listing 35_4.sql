create or replace procedure compute2(a number,b number) 
as 
c number; 
begin 
	c:=a-b; 
	dbms_output.put_line('Substract the two nos'||' '||'a-b 	='||''||c); 
end; 
/
