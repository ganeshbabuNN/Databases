BEGIN
  dbms_output.put_line(
    instr('ganesh babu', 'n') );
END;/

BEGIN
  dbms_output.put_line(
    instr('ganesh babu, 'n', 1) );
END;
/

BEGIN
  dbms_output.put_line(
    instr('ganesh babu', 'n', 11) );
END;
/

BEGIN
  dbms_output.put_line(
    instr('ganesh babu', 'n', 1, 2) );
END;
/

BEGIN
  dbms_output.put_line(
    instr('ganesh babu', 'n', 1, 3) );
END;
/

BEGIN
  dbms_output.put_line(
    instr('ganesh babu', 'n', -1, 3) );
END;
/

