drop table log_formats;
CREATE TABLE log_formats (
  date_and_time_txt VARCHAR2(100), 
  date_format VARCHAR2(100), 
  time_format VARCHAR2(100) );

INSERT INTO log_formats 
  (date_and_time_txt, date_format, time_format)
  VALUES
  ('Ganesh!', 'Month DD, YYYY', 'HH:MI:SS AM');


--spec
create or replace package logger 
as
  G_LOG_TABLE constant varchar2(2):='T';
  G_LOG_DISPLAY constant varchar2(2) :='D';
  G_LOG_ERROR constant varchar2(2) := 'DT';
  
PROCEDURE logit(
  v_message IN VARCHAR2 DEFAULT 'Hello World!',
  v_output_target IN VARCHAR2 DEFAULT G_LOG_TABLE);
end;
/

--body
create or replace 
package body logger
as
  GL_date_and_time varchar2(100) := ' The date and time is ';
  GL_date_format varchar2(100) := 'FMDD Month, YYYY';
  GL_time_format varchar2(100) := 'HH24:MI:SS';
  

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
        GL_date_and_time ||
        to_char(v_date, 'Day') || ' on ' ||
        to_char(v_date, GL_date_format) ||
        ' @ ' ||
        to_char(v_date, GL_time_format)
        );
    ELSE
      logit('ERROR v_output_target: '|| v_output_target || 'not found. ','T');
    end if;
    COMMIT;
END;
begin
 select date_and_time_txt,date_format,time_format
 into GL_date_and_time,GL_date_format,GL_time_format
 from log_formats;
 exception
  when no_data_found
  then 
  null;
end logger;
/

--call the procedures
begin
   logger.logit('is it working?',logger.G_LOG_ERROR);
end;
/

begin
   logger.logit('is it working?',logger.G_LOG_TABLE);
end;
/

begin
   logger.logit('is it working?',logger.G_LOG_DISPLAY);
end;
/

--Testing
-- Now remove the record in the log_formats tables and commits
--again call the AB logger.logit(---), here you may observer its calling the old values.
--Here concept is packages will loaded once , if you make any changes, unless you re-compiler or disconnect the session, the --it will return the previous values which is called.
