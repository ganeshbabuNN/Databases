--business holidy example
CREATE OR REPLACE FUNCTION BUSINESS_DAYS(
    P_START_DATE IN DATE 
  , P_END_DATE IN DATE 
  , P_DEBUG IN VARCHAR2 DEFAULT 'FALSE' )
RETURN NUMBER
AS
  v_loop_increment NUMBER := 0;
  v_days_increment NUMBER := 0;
BEGIN
  LOOP
    EXIT WHEN p_start_date + v_loop_increment >  p_end_date;
    IF to_number(to_char(p_start_date + v_loop_increment, 'd'))
      IN (2,3,4,5,6)
    THEN 
      v_days_increment := v_days_increment + 1;
      IF p_debug != 'FALSE'
      THEN
        dbms_output.put_line(to_char(p_start_date + v_loop_increment, 'FMDay DD "of" Month, YYYY'));
      END IF; 
    END IF;
    v_loop_increment := v_loop_increment + 1;
  END LOOP;
  RETURN v_days_increment;
END BUSINESS_DAYS;
/
---Using Function in the Select Statement
SELECT business_days(
      p_start_date => to_date( '22-DEC-2012', 'DD-MON-YYYY'),
      p_end_date => to_date('03-JAN-2013', 'DD-MON-YYYY')) biz_days
FROM DUAL;
/
