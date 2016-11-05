create or replace trigger rev_update_cascade before update on child for each row
begin
    update parent set a =:new.a where a =:old.a;
end;
/
select * from parent;
