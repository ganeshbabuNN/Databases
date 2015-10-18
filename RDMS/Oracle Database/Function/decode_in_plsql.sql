DECLARE
  v_decoded_value VARCHAR2(1);
  
BEGIN

  SELECT decode('D', 'A', 'B', 'C')
    INTO v_decoded_value
    FROM DUAL;

  IF v_decoded_value = 'B'
  THEN
    logit('The moon is blue', 'D');
  END IF;
END;
/