---when you do the automonoous transaction, you have to commit or rollback

create or replace PROCEDURE logit(
  v_message IN VARCHAR2 DEFAULT 'Hello World!')
AS
  PRAGMA AUTONOMOUS_TRANSACTION;
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
  COMMIT;
END;
/
---call using nested call.
BEGIN
  logit;
  logit(2);
  BEGIN
    logit( 'Hello again!');
    DECLARE
      v_a_different_msg VARCHAR2(100);
    BEGIN
      rollback; -- Notice the rollback
      v_a_different_msg := 'Where am I?';
      logit( v_a_different_msg );
    END;
  END;
END;
/