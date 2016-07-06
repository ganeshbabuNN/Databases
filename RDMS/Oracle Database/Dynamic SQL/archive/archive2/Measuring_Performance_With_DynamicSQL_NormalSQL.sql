declare
  v_char_null varchar2(10);
  v_num_null number;
  v_not_null number := 0;
  v_value number;
  v_loop_cnt PLS_INTEGER := 10000;
  v_start_time timestamp(9);
  v_end_time timestamp(9);
  
  v_rand number := abs(dbms_random.random);

  v_sql_stmt VARCHAR2(1000);  
begin

  v_loop_cnt := v_loop_cnt + v_rand;

  dbms_output.put_line('Random: ' || to_char(v_rand) );
  
  v_start_time := systimestamp;

  FOR i IN v_rand..v_loop_cnt
  LOOP
    v_sql_stmt := 'SELECT NVL(to_number(''''), to_number(''' || i || ''')) FROM DUAL';
    EXECUTE IMMEDIATE v_sql_stmt INTO v_value;
  END LOOP;  
              
  v_end_time := systimestamp;
              
  dbms_output.put_line( 'No Binds, Conversion         ' ||  
              to_char(v_end_time - v_start_time) );

  v_start_time := systimestamp;

  FOR i IN v_rand..v_loop_cnt
  LOOP
    v_sql_stmt := 'SELECT NVL(null, ' || i || ') FROM DUAL';
    EXECUTE IMMEDIATE v_sql_stmt  INTO v_value;
  END LOOP;  
              
  v_end_time := systimestamp;
              
  dbms_output.put_line( 'No Binds, No Conversion      ' ||  
              to_char(v_end_time - v_start_time) );

  v_start_time := systimestamp;

  v_sql_stmt := 'SELECT NVL(:v_num_null, :v_not_null) FROM DUAL' ;
      
  FOR i IN v_rand..v_loop_cnt
  LOOP
    v_not_null := i;
    EXECUTE IMMEDIATE v_sql_stmt  INTO v_value USING IN v_num_null, IN v_not_null;
  END LOOP;  
              
  v_end_time := systimestamp;
              
  dbms_output.put_line( 'Binds, No Conversion         ' ||  
              to_char(v_end_time - v_start_time) );

  v_start_time := systimestamp;

  FOR i IN v_rand..v_loop_cnt
  LOOP
    v_not_null := i;
    SELECT NVL(v_num_null, v_not_null) INTO v_value FROM DUAL;
  END LOOP;  
              
  v_end_time := systimestamp;
              
  dbms_output.put_line( 'Not Dynamic                  ' ||  
              to_char(v_end_time - v_start_time) );

end;
/