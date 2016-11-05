--unconditional loop

declare
  v_cntr NUMBER := 0;
begin
   loop
   exit when v_cntr >= 10;
   dbms_output.put_line(v_cntr);
   v_cntr :=v_cntr + 1;   
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
	/* Simple loop. */
		LOOP
		/* Incrementing the counter. */
			varCtr := varCtr + 1;
		/* Generating and inserting random numbers into the table. */
			INSERT INTO RandomNumbers (RandNo) VALUES (DBMS_RANDOM.RANDOM());
			EXIT WHEN varCtr >= varHowManyTimes;
		END LOOP;
	/* Printing a message. */
		DBMS_OUTPUT.PUT_LINE(TO_CHAR(varCtr) || ' random numbers generated successfully.');
	END;
	/