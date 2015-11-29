begin
  for v_cntr IN 1..10  loop
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
	/* For loop. */
		FOR varCtrTemp IN 1..varHowManyTimes
		LOOP
		/* Generating and inserting random numbers into the table. */
			INSERT INTO RandomNumbers (RandNo) VALUES (DBMS_RANDOM.RANDOM());
			varCtr := varCtrTemp;
		END LOOP;
	/* Printing a message. */
		DBMS_OUTPUT.PUT_LINE(TO_CHAR(varCtr) || ' Random numbers generated successfully.');
	END;
	/