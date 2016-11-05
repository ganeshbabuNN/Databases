create or replace package logger
as

PROCEDURE logit(
  v_message IN VARCHAR2 DEFAULT 'Hello World!',
  v_output_target IN VARCHAR2 DEFAULT 'T');

  PROCEDURE set_GL_date_and_time_txt( p_GL_date_and_time_txt IN VARCHAR2 );
  PROCEDURE set_GL_date_format( p_GL_date_format IN VARCHAR2 );
  PROCEDURE set_GL_time_format( p_GL_time_format IN VARCHAR2 ); 

END;
/

CREATE OR REPLACE
PACKAGE BODY LOGGER AS
  
  
  FUNCTION get_GL_date_and_time_txt
    RETURN VARCHAR2;
  FUNCTION get_GL_date_format
    RETURN VARCHAR2;
  FUNCTION get_GL_time_format
    RETURN VARCHAR2;

  PROCEDURE logit(
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

  ELSE

    logit('ERROR v_output_target: ' ||
          v_output_target ||
          ' not found.', 'T' );
  END IF;

  COMMIT;

END;

  PROCEDURE set_GL_date_and_time_txt( p_GL_date_and_time_txt IN VARCHAR2 )
  AS
  BEGIN
    GL_date_and_time_txt := p_GL_date_and_time_txt;
  END;
  
  PROCEDURE set_GL_date_format( p_GL_date_format IN VARCHAR2 )
  AS
  BEGIN
    GL_date_format := p_GL_date_format;
  END;
  
  PROCEDURE set_GL_time_format( p_GL_time_format IN VARCHAR2 )
  AS
  BEGIN
    GL_time_format := p_GL_time_format;
  END;
  
  
  FUNCTION get_GL_date_and_time_txt
  RETURN VARCHAR2
  AS
  BEGIN
    RETURN GL_date_and_time_txt;
  END;
  
  FUNCTION get_GL_date_format
  RETURN VARCHAR2
  AS
  BEGIN
    RETURN GL_date_format;
  END;
  
  FUNCTION get_GL_time_format
  RETURN VARCHAR2
  AS
  BEGIN
    RETURN GL_time_format;
  END;  

  SELECT date_and_time_txt, date_format, time_format
    INTO GL_date_and_time_txt, GL_date_format, GL_time_format
    FROM log_formats;
EXCEPTION    
WHEN NO_DATA_FOUND 
  THEN NULL;
END LOGGER;

/
