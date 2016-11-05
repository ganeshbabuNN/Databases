CREATE OR REPLACE FUNCTION isLeapYear(leapYear NUMBER) 	RETURN boolean AS
BEGIN
IF MOD(leapYear, 400) = 0 OR (MOD(leapYear, 4) = 0 AND MOD (leapYear, 100) != 0) THEN
return TRUE;
ELSE 
return FALSE;
END IF;
END;
/
  
--test
SET SERVEROUTPUT ON
BEGIN
IF isLeapYear(2008) THEN
DBMS_OUTPUT.PUT_LINE('It is a leap year');
ELSE
DBMS_OUTPUT.PUT_LINE('It is not a leap year');
END IF;
END;
/