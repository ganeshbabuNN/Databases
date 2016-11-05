create or replace PROCEDURE PRINT_BUSINESS_DAYS
  (
    P_START_DATE IN DATE 
    , P_END_DATE IN DATE 
  )
AS
  v_loop_increment NUMBER := 0;
BEGIN
  LOOP
    EXIT WHEN p_start_date + v_loop_increment > p_end_date;
    IF to_number(to_char(p_start_date + v_loop_increment, 'd'))
      IN (2,3,4,5,6)
    THEN 
      dbms_output.put_line(to_char(p_start_date + v_loop_increment, 'FMDay DD "of" Month, YYYY'));
    END IF;
    CONTINUE; --continue to the begining of the statements, 
    v_loop_increment := v_loop_increment + 1;
  END LOOP;
END PRINT_BUSINESS_DAYS;
/


--call the procedures
BEGIN
 PRINT_BUSINESS_DAYS(sysdate,sysdate+10);
end;