create or replace trigger drop_trg
before drop on scott.schema
begin
  	raise_application_error(-20012,'can not drop object');
end;
