SET SERVEROUTPUT ON SIZE 10240
DECLARE
  i NUMBER;
  j NUMBER;
  k NUMBER;
BEGIN
  FOR i IN 2..15
  LOOP
    FOR j IN 1..16
    LOOP
      k:=i*16+j;
      DBMS_OUTPUT.PUT((TO_CHAR(k, '000')) || ':' || CHR(k) || '  ');
      IF k MOD 8 = 0 THEN
        DBMS_OUTPUT.PUT_LINE('');
      END IF;
    END LOOP;
  END LOOP;
END;
/