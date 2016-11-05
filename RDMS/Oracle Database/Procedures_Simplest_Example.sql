create or replace procedure insert_a_rec
as
begin
  insert into LOG_TABLE (date_time,msg)
   values(sysdate,'this is a message');
end;
/


--calling the procedures
begin
  insert_a_rec;
end;



 



 
