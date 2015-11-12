--IF 
create or replace PROCEDURE logit(
  v_message IN VARCHAR2 DEFAULT 'Hello World!',
  v_output_target IN VARCHAR2 DEFAULT 'T')
AS
  -- v_output target may be T for table or
  --    D for dbms_output
  PRAGMA AUTONOMOUS_TRANSACTION;
  v_date DATE := SYSDATE;
BEGIN
  IF v_output_target = 'T'
  THEN
    insert into log_table
      (date_and_time, message)
      VALUES (v_date, v_message);
  ELSIF v_output_target = 'D'
  THEN
    DBMS_OUTPUT.put_line(
        v_message ||
        ' The date and time is ' ||
        to_char(v_date, 'Day') || ' on ' ||
        to_char(v_date, 'FMDD Month, YYYY') ||
        ' @ ' ||
        to_char(v_date, 'HH24:MI:SS')
        );
  END IF;
  COMMIT;
END;
/
---Call using name and positional in order
BEGIN
  logit(v_output_target => 'D');
  BEGIN
    logit( 'Hello again!',v_output_target => 'D');
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

---but not from positional to name, it will not work
BEGIN
  logit(v_output_target => 'D');
  BEGIN
    logit( v_output_target => 'D','Hello again!');
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