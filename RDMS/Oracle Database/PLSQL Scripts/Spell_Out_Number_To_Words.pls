CREATE OR REPLACE
  FUNCTION NumberConversion(
      num NUMBER)
    RETURN VARCHAR2
  IS
    str1  VARCHAR2(1000);
    str2  VARCHAR2(20);
    num1  NUMBER;
    num2  NUMBER := 1;
    num3  NUMBER;
    LSign NUMBER;
    num4  NUMBER;
  BEGIN
    num1   := INSTR(num, '.');
    LSign  := SIGN(num);
    num4   := ABS(num);
    IF num1 = 0 THEN
      SELECT TO_CHAR(TO_DATE(num4, 'J'), 'JSP') INTO str1 FROM DUAL;
    ELSE
      SELECT TO_CHAR(TO_DATE(SUBSTR(num4, 1, NVL(INSTR(num4, '.') -1, LENGTH(num4))), 'J'), 'JSP')
      INTO str1
      FROM DUAL;
      SELECT LENGTH(SUBSTR(num4, INSTR(num4, '.') + 1)) INTO num3 FROM DUAL;
      str1      := str1 || ' POINT ';
      WHILE num2 < num3 + 1
      LOOP
        SELECT TO_CHAR(TO_DATE(SUBSTR(num4, (INSTR(num4, '.') + num2), 1), 'J'), 'JSP')
        INTO str2
        FROM DUAL;
        str1 := str1 || str2 || ' ';
        num2 := num2 + 1;
      END LOOP;
    END IF;
    IF LSign = -1 THEN
      RETURN 'NEGATIVE ' || str1;
    ELSE
      RETURN str1;
    END IF;
  END;
  /

--test
select salary,numberConversion(salary) FROM employees;