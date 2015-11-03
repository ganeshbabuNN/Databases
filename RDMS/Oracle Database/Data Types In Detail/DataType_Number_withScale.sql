DECLARE
  vNum NUMBER(5,2);
  vNum1 NUMBER(5,2);
  vNum2 NUMBER(5,2);
  vNum3 NUMBER(5,2);
BEGIN
  vNum := 100.22;
  dbms_output.put_line(vNum);
   vNum1 := 100.2233; --out of scale
  dbms_output.put_line(vNum1);
  vNum2 := 100.226; --precision will do round off
  dbms_output.put_line(vNum2);
  vNum3 := 9999.226; --number too large
  dbms_output.put_line(vNum3);
END;
/