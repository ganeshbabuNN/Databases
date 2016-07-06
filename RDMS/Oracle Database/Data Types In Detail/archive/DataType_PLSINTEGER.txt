--it behaves like a integer but extacts works like an number
--basically this are used in the looping mechanism.

DECLARE
  v_counter PLS_INTEGER := 0;
BEGIN
  LOOP
    EXIT WHEN v_counter >10;
     v_counter := v_counter +1 ;
  end loop;
END;
/