create or replace trigger trg
before insert on t
for each row
declare
	x number;
begin
 	select max(a) into x from t;
 	:new.a:=x+1;
end;
/
