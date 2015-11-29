--declaring
declare
  /*Declaring the constants and intializing  */
  employeeid CONSTANT number(10):=23;
begin
  /* printing in the console */
  dbms_output.put_line(employeeid);
end;
/

--declaring but not initizlized gives error
declare
  /*Declaring the constants and not intialized  */
  employeeid CONSTANT number(10);
begin
  /* printing in the console */
  dbms_output.put_line(employeeid);
end;
/

--declaring but initizlized in the executable sections but gives
declare
  /*Declaring the constants and not intialized  */
  employeeid CONSTANT number(10);
begin
  employeeid := 101;
  /* printing in the console */
  dbms_output.put_line(employeeid);
end;
/


--Example with the loop
DECLARE
  v_cntr NUMBER := 0;
  v_message constant varchar2(30) := 'Hello world on ';
  v_system_date constant date := sysdate;

BEGIN
  LOOP
    EXIT WHEN v_cntr >= 10;
    --constant nevery changes its value , enable below statement to get an error
    --v_message :='what '; 
    dbms_output.put_line('Hello world on ' || to_char(v_system_date, 'MM/DD/YYYY'));
    v_cntr := v_cntr + 1;
  END LOOP;
END;
/