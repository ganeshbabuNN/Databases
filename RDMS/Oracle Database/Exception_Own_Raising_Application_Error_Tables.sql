create or replace PROCEDURE bad_abc
AS
  v_what NUMBER;
BEGIN
  BEGIN
    --v_what := 'abc';
    RAISE_APPLICATION_ERROR(-20001, 'Weird Error');
  EXCEPTION
    WHEN WEIRD_ERROR
    THEN
      logit_and_continue(sqlerm); -- error in some table
    END;
   dbms_output.put_line(v_what); 
   Exception
	WHEN OTHERS
	THEN
	    logit_and_raise(sqlerrm); --different table
	END;
END;
/