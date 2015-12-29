SELECT EXTRACT(YEAR FROM hire_date),
	DECODE(MOD(EXTRACT(YEAR FROM hire_date), 4),  0,
		DECODE(MOD(EXTRACT(YEAR FROM hire_date), 400),  0,  'Leap Year',
			DECODE(MOD(EXTRACT(YEAR FROM hire_date), 100), 0, 
				'Not a Leap Year', 'Leap Year')), 'Not a Leap Year') 
					AS "Leap Year Indicator"
						FROM Employees;