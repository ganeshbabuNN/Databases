declare
  v_business_days NUMBER;
begin
  v_business_days :=
    business_days(
      to_date( '22-DEC-2012', 'DD-MON-YYYY'),
      to_date('03-JAN-2013', 'DD-MON-YYYY')
    );

  dbms_output.put_line(v_business_days); 

end;
/

declare
  v_business_days NUMBER;
begin
  v_business_days :=
    business_days(
      to_date( '22-DEC-2012', 'DD-MON-YYYY'),
      to_date('03-JAN-2013', 'DD-MON-YYYY'),
      'WHATEVER'
    );

  dbms_output.put_line(v_business_days); 
end;
/

declare
  v_business_days NUMBER;
begin
  v_business_days :=
    business_days(
      p_start_date => to_date( '22-DEC-2012', 'DD-MON-YYYY'),
      p_end_date => to_date('03-JAN-2013', 'DD-MON-YYYY'),
      p_debug => 'WHATEVER'
    );

  dbms_output.put_line(v_business_days); 
end;
/

SELECT business_days(
      p_start_date => to_date( '22-DEC-2012', 'DD-MON-YYYY'),
      p_end_date => to_date('03-JAN-2013', 'DD-MON-YYYY')) biz_days
FROM DUAL;