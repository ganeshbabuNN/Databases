create or replace type body complex2 as 
static function add1 (x complex2, y complex2) return complex2 is
begin
	return complex2(x.rl + y.rl, x.im + y.im);
end add1;
member procedure print is
begin
	dbms_output.put_line('real part '||rl||' imag part '||im);
end print;
order member function val(x complex2) return number is
begin
	if(sqrt(self.rl*self.rl+self.im*self.im)>sqrt(x.rl*x.rl+x.im*x.im))then
		return(1);
	else
		return(-1);
	end if;
end val;
end;
/