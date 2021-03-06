--cleaning the boilerplate code in a clean way --Package_Baisc_Spec_Implementation.sql


--- specification of package
Create or replace package logger 
as
  G_LOG_TABLE constant varchar2(2):='T';
  G_LOG_DISPLAY constant varchar2(2) :='D';
  G_LOG_ERROR constant varchar2(2) := 'DT';  

PROCEDURE logit(
  v_message IN VARCHAR2 DEFAULT 'Hello World!',
  v_output_target IN VARCHAR2 DEFAULT G_LOG_TABLE);
end;
/

--Body implementations
create or replace package body logger
as
PROCEDURE logit(
  v_message IN VARCHAR2 DEFAULT 'Hello World!',
  v_output_target IN VARCHAR2 DEFAULT G_LOG_TABLE)
AS
  PRAGMA AUTONOMOUS_TRANSACTION;
  v_date DATE := SYSDATE;  
  begin
    if v_output_target = G_LOG_TABLE
    then
     insert into log_table
    (date_and_time, message)
    VALUES (v_date, v_message);
   elsif v_output_target= G_LOG_DISPLAY
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