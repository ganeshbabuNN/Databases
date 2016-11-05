SET SERVEROUTPUT ON
DECLARE
TYPE typDepartment
IS
  TABLE OF Departments%ROWTYPE INDEX BY BINARY_INTEGER;
  arrayDepartment typDepartment;
TYPE cursorDepartment
IS
  REF
  CURSOR
    RETURN Departments%ROWTYPE;
    c1 cursorDepartment;
    num NUMBER := 1;
  BEGIN
    OPEN c1 FOR SELECT * FROM Departments;
    LOOP
      EXIT
    WHEN c1%NOTFOUND;
      FETCH c1 INTO arrayDepartment(num);
    num := num + 1;
  END LOOP;
  CLOSE c1;
  FOR num IN 1..arrayDepartment.LAST
  LOOP
    DBMS_OUTPUT.PUT_LINE('Department Number: ' || arrayDepartment(num).department_id);
    DBMS_OUTPUT.PUT_LINE('Department Name: ' || arrayDepartment(num).Department_name);
    DBMS_OUTPUT.PUT_LINE('---------------------------');
  END LOOP;
END;
/
