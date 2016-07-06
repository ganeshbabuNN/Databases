create or replace type body complex1 as 
member function add1 (x complex1) return complex1 is
begin
	return complex1(rl + x.rl, im + x.im);
end add1;
member procedure print is
begin
	dbms_output.put_line('real part '||rl||' imag part '||im);
end print;
map member function val return number is
begin
	return (sqrt(rl*rl+im*im));
end val;
end;
/
