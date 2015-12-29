CREATE OR REPLACE
  FUNCTION fibonacci(
      num POSITIVE)
    RETURN INTEGER
  IS
  BEGIN
    /* Terminating condition */
    IF (num = 1) OR (num = 2) THEN
      RETURN 1;
    ELSE
      /* Recursive Call */
      RETURN fibonacci(num - 1) + fibonacci(num - 2);
    END IF;
  END fibonacci;
  /

--test
select factorial(1),factorial(2),factorial(3),factorial(4) from dual;