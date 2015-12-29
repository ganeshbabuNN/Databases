SET SERVEROUTPUT ON;
CREATE OR REPLACE PROCEDURE Cheq(num NUMBER)
AS
  num1   NUMBER         := 0;
  Output VARCHAR2(2000) := '';
  str1   VARCHAR2(2000) := '';
  str2   VARCHAR2(2000) := '';
  str3   VARCHAR2(2000) := '';
BEGIN
  num1  := LENGTH(num);
  IF num < 0 OR num > 999999999 THEN
    DBMS_OUTPUT.PUT_LINE('Invalid Amount');
  ELSE
    IF (num     = 0) THEN
      str1     := 'ZERO ';
    ELSIF (num <= 99999) THEN
      str1     := TO_CHAR(TO_DATE(num, 'J'), 'JSP') || ' ';
    ELSE
      IF (TO_NUMBER(SUBSTR(num, num1 - 5 + 1)) = 0) THEN
        str1                                  := '';
      ELSE
        str1 := TO_CHAR(TO_DATE(TO_NUMBER(SUBSTR(num, num1 - 5 + 1)), 'J'), 'JSP') || ' ';
      END IF;
      IF (num1 = 6) THEN
        str2  := TO_CHAR(TO_DATE(TO_NUMBER(SUBSTR(num, 1, num1 - 5)), 'J'), 'JSP') || ' LAKH ';
      ELSE
        IF (TO_NUMBER(SUBSTR(num, num1 - 5 -1, 2)) = 0) THEN
          str2                                    := '';
        ELSE
          str2 := TO_CHAR(TO_DATE(TO_NUMBER(SUBSTR(num, num1 - 5 - 1, 2)), 'J'), 'JSP') || ' LAKH ';
        END IF;
        IF (num1 >= 8) THEN
          str3   := TO_CHAR(TO_DATE(TO_NUMBER(SUBSTR(num, 1, num1 -7)), 'J'), 'JSP') || ' CRORE ';
        END IF;
      END IF;
    END IF;
    IF (num = 0 OR num = 1) THEN
      DBMS_OUTPUT.PUT_LINE(num || ' => ' || num1 || 'RUPEE ONLY');
    ELSE
      DBMS_OUTPUT.PUT_LINE(num || ' => ' || str3 || str2 || str1 || 'RUPEES ONLY');
    END IF;
  END IF;
END Cheq;
/

--test
exec cheq(23823923);