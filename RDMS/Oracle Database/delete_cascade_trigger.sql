create or replace trigger delete_cascade before delete on parent for each 		row
begin
     delete child where a = :old.a ;
end;
/
