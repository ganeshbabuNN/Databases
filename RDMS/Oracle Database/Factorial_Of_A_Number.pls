CREATE OR REPLACE FUNCTION factorial (num POSITIVE) RETURN INTEGER IS
	BEGIN
	/* Terminating condition */
		IF num = 1 THEN
			RETURN 1;
		ELSE
	/* Recursive Call */
			RETURN num * factorial(num - 1);
		END IF;
	END factorial;
	/
--test
select factorial(1),factorial(2),factorial(3),factorial(4) from dual;