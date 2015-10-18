BEGIN
  dbms_output.put_line(
    instr('Lewis Cunningham', 'n') );
END;/

BEGIN
  dbms_output.put_line(
    instr('Lewis Cunningham', 'n', 1) );
END;
/

BEGIN
  dbms_output.put_line(
    instr('Lewis Cunningham', 'n', 11) );
END;
/

BEGIN
  dbms_output.put_line(
    instr('Lewis Cunningham', 'n', 1, 2) );
END;
/

BEGIN
  dbms_output.put_line(
    instr('Lewis Cunningham', 'n', 1, 3) );
END;
/

BEGIN
  dbms_output.put_line(
    instr('Lewis Cunningham', 'n', -1, 3) );
END;
/

