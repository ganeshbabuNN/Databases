declare
  v_cntr number :=0;
begin
  while v_cntr <=10 loop
    v_cntr := v_cntr +1;
    dbms_output.put_line(v_cntr);
  end loop;
end;
/

---
SET SERVEROUTPUT ON
	DECLARE
	/* Declaration of memory variables and constants to be used in the Execution section.*/
		varHowManyTimes Number;
		varCtr Number := 0;
	BEGIN
	/* Accepting how many numbers to be generated. */
		varHowManyTimes  := &HowManyNos;
	/* While loop. */
		WHILE varCtr < varHowManyTimes
		LOOP
		/* Generating and inserting random numbers into the table. */
			INSERT INTO RandomNumbers (RandNo) VALUES (DBMS_RANDOM.RANDOM());
		/* Incrementing the counter. */
			varCtr := varCtr + 1;
		END LOOP;
	/* Printing a message. */
		DBMS_OUTPUT.PUT_LINE(TO_CHAR(varCtr) || ' random numbers generated successfully.');
	END;
	/