create or replace procedure compute1(a number, b number) 
as 
c number; 
begin 
	c:=a+b; 
	dbms_output.put_line('Adds the two nos'||' '||'a+b ='||''||c); 
end; 
/
