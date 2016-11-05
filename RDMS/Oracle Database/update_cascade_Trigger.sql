create trigger update_cascade after update on parent for each row
begin
	update child set a = :new.a where a =:old.a;
end;
/
