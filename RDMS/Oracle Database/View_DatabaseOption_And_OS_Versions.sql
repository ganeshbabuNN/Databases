SET HEAD OFF FEED OFF PAGES 0 SERVEROUTPUT ON
COL BANNER FORMAT A72 WRAP
SELECT BANNER FROM SYS.V_$VERSION;
SELECT 'With the ' || parameter || ' option' FROM SYS.V_$OPTION WHERE VALUE='TRUE';
SELECT 'The ' || parameter || ' option is not installed' FROM SYS.V_$OPTION WHERE VALUE <> 'TRUE';
BEGIN
DBMS_OUTPUT.PUT_LINE('Port String: ' || DBMS_UTILITY.PORT_STRING);
END;
/
SET HEAD ON FEED ON