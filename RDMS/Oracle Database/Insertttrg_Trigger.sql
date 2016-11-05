create or replace trigger insertttrg before insert on t for each row
begin
	:new.a := cnt_pkg.cnt+1;
	cnt_pkg.cnt:=cnt_pkg.cnt+1;
end;
/
