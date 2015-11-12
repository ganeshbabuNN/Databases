DECLARE
  v_output VARCHAR2(1);
BEGIN
  execute immediate 
      'insert into tababc (col1, col2) 
         values (:col1val, :col2val)
         RETURNING col1 INTO :colret'
    using 'A', 'B', OUT v_output;  ---v_output for output result
  logit('v_output: ' || v_output, 'D' );    
END;
/