create or replace trigger parent_ins
instead of insert on parent_child 
for each row
declare
	x number;
begin 
	select max(a)
	into x
	from parent;
	x := x+1;
	insert into parent values(x,:new.b);
end; 
/
