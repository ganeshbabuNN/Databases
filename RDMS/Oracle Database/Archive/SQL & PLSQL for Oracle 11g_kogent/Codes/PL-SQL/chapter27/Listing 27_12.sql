create or replace type body complex3 as 
member function sub1 (x complex3) return complex3 is
begin
	return complex3(rl - x.rl, im - x.im);
end sub1;   
end;
/
