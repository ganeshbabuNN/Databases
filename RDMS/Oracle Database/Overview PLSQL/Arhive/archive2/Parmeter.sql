--procedure
create or replace procedure text_it(p_message varchar2)
as
  begin 
    dbms_output.put_line(p_message);
  end;
 /
or

create or replace procedure text_it(p_message IN varchar2)
as
  begin 
    dbms_output.put_line(p_message);
  end;
 /
 

--calling the procedusre
begin
  text_it('hello ganesh');
end;
/

--positional parameter namming or notations

begin
  text_it(p_message=>'hello ganesh');
end;
/

--IN OUT mode -like regular variable
create or replace procedure text_it( p_message IN OUT VARCHAR2)
as
begin
  p_message :=p_message  ||': I added something';
  dbms_output.put_line(p_message);
end;
/

--calling the procedure
declare
  v_variable varchar2(300) :='hello world';
begin
  text_it(p_message => v_variable);
end;
/

--OUT mode
create or replace procedure text_it( p_message OUT VARCHAR2)
as
begin
  p_message :=p_message  ||': I added something';
  dbms_output.put_line(p_message);
end;
/

--calling the procedure in OUT MODE.
declare
  v_variable varchar2(300) :='hello world';
begin
  text_it(p_message => v_variable); --this will return null
end;
/

--using the name notations
--procedure calling the procedure is not allowed
begin
  text_it(p_message => 'wahtever');
end;
/


