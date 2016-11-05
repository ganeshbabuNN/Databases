--Poor Example
DECLARE
  v_boolean BOOLEAN;
  v_var1 NUMBER := 0;
  v_var2 NUMBER := 1;
BEGIN
  IF v_var1 = v_var2 
  THEN
    v_boolean := TRUE;
  ELSE
    v_boolean := FALSE;
  END IF;
  
  IF v_boolean
  THEN
    NULL;
  END IF;
END;
/

-- Good example of direct usage

DECLARE
  v_var1 NUMBER := 0;
  v_var2 NUMBER := 1;
BEGIN
  IF v_var1 = v_var2 
  THEN
    NULL;
  END IF;
END;


-- good example for variable reuse
--- directly using a variable assignment of the boolean expression of that boolean data type.

DECLARE
  v_boolean BOOLEAN;
  v_var1 NUMBER := 0;
  v_var2 NUMBER := 1;
BEGIN
  v_boolean := v_var1 = v_var2;

  IF v_boolean
  THEN
    NULL;
  END IF;
END;