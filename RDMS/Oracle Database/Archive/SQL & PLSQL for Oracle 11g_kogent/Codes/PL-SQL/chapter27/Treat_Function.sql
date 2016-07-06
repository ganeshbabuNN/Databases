declare
x complex3;
y complex1;
begin
x := complex3(3,4);
y := complex1(5,6);
y:=treat(x as complex1);
y.print;
end;
