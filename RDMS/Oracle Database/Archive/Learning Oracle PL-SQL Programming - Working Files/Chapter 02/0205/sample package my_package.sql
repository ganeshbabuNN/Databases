CREATE OR REPLACE PACKAGE my_package
AS
  FUNCTION return_a_1
  RETURN NUMBER;

  PROCEDURE insert_a_rec;
END;
/

CREATE OR REPLACE PACKAGE BODY my_package
AS
  FUNCTION return_a_1
  RETURN NUMBER
  AS
  BEGIN
    RETURN 1;
  END;

  PROCEDURE insert_a_rec
  AS
  BEGIN
    INSERT INTO log_table (date_and_time, msg)
      VALUES (sysdate, 'This is a message');
  END;

END;  
/

