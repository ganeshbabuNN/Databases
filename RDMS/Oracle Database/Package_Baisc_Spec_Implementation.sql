--- specification of the procedures
create or replace package logger 
as
PROCEDURE logit(
  v_message IN VARCHAR2 DEFAULT 'Hello World!',
  v_output_target IN VARCHAR2 DEFAULT 'T');
end;
/

--Body implementations
Create or replace package body logger
as
PROCEDURE logit(
  v_message IN VARCHAR2 DEFAULT 'Hello World!',
  v_output_target IN VARCHAR2 DEFAULT 'T')
AS
  PRAGMA AUTONOMOUS_TRANSACTION;
  v_date DATE := SYSDATE;
  begin
    if v_output_target = 'T'
    then
     insert into log_table
    (date_and_time, message)
    VALUES (v_date, v_message);
   elsif v_output_target='D'
   then
     DBMS_OUTPUT.put_line(
        v_message ||
        ' The date and time is ' ||
        to_char(v_date, 'Day') || ' on ' ||
        to_char(v_date, 'FMDD Month, YYYY') ||
        ' @ ' ||
        to_char(v_date, 'HH24:MI:SS')
        );
    ELSE
      logit('ERROR v_output_target: '|| v_output_target || 'not found. ','T');
    end if;
    COMMIT;
END;
end;
/