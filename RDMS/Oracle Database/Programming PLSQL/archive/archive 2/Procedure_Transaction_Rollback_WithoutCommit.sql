--sample procedures for showing how the transaction is used
create or replace PROCEDURE logit(
  v_message IN VARCHAR2 DEFAULT 'Hello World!')
AS
  v_date DATE := SYSDATE;
BEGIN
/*
  DBMS_OUTPUT.put_line(
        v_message ||
        ' The date and time is ' ||
        to_char(v_date, 'Day') || ' on ' ||
        to_char(v_date, 'FMDD Month, YYYY') ||
        ' @ ' ||
        to_char(v_date, 'HH24:MI:SS')
        );
*/

  insert into log_table
    (date_and_time, message)
    VALUES (v_date, v_message);

END;
/

--nested calls
BEGIN
  logit;
  logit(2);
  BEGIN
    logit( 'Hello again!');
    DECLARE
      v_a_different_msg VARCHAR2(100);
    BEGIN
      v_a_different_msg := 'Where am I?';
      logit( v_a_different_msg );
    END;
  END;
END;
/

---Now try Rollback and check the values are commited.