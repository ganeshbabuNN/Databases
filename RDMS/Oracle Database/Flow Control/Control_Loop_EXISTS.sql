--excluding the Holidays which we define
create or replace PROCEDURE PRINT_BUSINESS_DAYS
  (
    P_START_DATE IN DATE 
    , P_END_DATE IN DATE 
  )
AS
  TYPE t_holidays IS TABLE OF VARCHAR2(100)
    INDEX BY VARCHAR2(30);
  v_dates t_holidays;
  v_loop_increment NUMBER := 0;
BEGIN
  v_dates('01-JAN') := 'Mew Years';
  v_dates('04-JUL') := 'Independence Day';
  v_dates('25-DEC') := 'Christmas Day';
  LOOP
    EXIT WHEN p_start_date + v_loop_increment > p_end_date;
    IF NOT v_dates.EXISTS(to_char(p_start_date + v_loop_increment, 'DD-MON')) ---EXISTS..
    THEN
      IF to_number(to_char(p_start_date + v_loop_increment, 'd'))
        IN (2,3,4,5,6)
      THEN 
        dbms_output.put_line(to_char(p_start_date + v_loop_increment, 'FMDay DD "of" Month, YYYY')); 
      END IF;
    END IF;
    v_loop_increment := v_loop_increment + 1;
  END LOOP;
END PRINT_BUSINESS_DAYS;
/
---call the procedures
begin
  print_business_days(
     to_date( '22-DEC-2012', 'DD-MON-YYYY'),
     to_date('03-JAN-2013', 'DD-MON-YYYY')
  );
end;
/