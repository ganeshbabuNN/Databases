create or replace procedure setmyrole
authid current_user as
begin
    sys.dbms_session.set_role('emprole');
end;
/