--using $
select first_name,salary,to_char(salary,'$99999') from employees;
--using 0
select first_name,salary,to_char(salary,'999999.999999') from employees;
--using ,
select first_name,salary,to_char(salary,'99,99,99,99') from employees;
select first_name,salary,to_char(salary,'00,009,999,999') from employees;
--using RN
select first_name,salary,employee_id,to_char(substr(employee_id,1,1),'RN') 
from employees ORDER BY to_char(substr(employee_id,1,1),'RN') ASC;


/*
Format models

Element		Descriptions
,[comma]	returns a comma in the specified position. A comma cannot begin a number format. A comma cannot appear to the 		right of a decimal character or period in a number format.
		Example : 9,999
.[period]	returns a decimal point, which is a period[.] in the specified position. only one period can be specified in 			a number format Example 99.99
$		returns value with the a leading dollar sign
		Example : $9999
0		Returns leading or trialing zeros
		example : 0999 or 9990
9		Returns value with the specified number of digits with a leading space if positive or with a leading minus if 		negative. leading zeros are blank, except for zero value, which returns a zero for the integer part of the 			fixed pooint number. Ex 9999
B		returns blanks for the integer part of a fixed point number when the integer part is zero[regardless of "0"in 		the number format] ex : B9999
C		returns in the specifie dposition the ISO Currency smobol [the current value of the NL_ISO_CURRENCY 				parameter] ex C9999
D		Returns in the specified position the decimal character, which is current value of the NL_ISO_CURRENCY 				parameter. the default is a period[.].Only one decimal character can be specified in a number format. 				Example :99D99
EEEE		Returns a value using in scientific notations
		exampel 9.9EEEE
FM		returns a value with no leading or trialing blanks
		example:	FM90.9
G		Returns a value specified position the group separater[the current value of the 				NL_NUMBERIC_CHARACTER].Mutliple group  separators can be specified in a number format model. A group 				separator cannot appear to the right of a decimal character or period in a number format model.
		example: 9G999
L		Returns in the specified position the local currency symobol[the current value of the NLS_CURRENCY Parameter]
		Example: L999
MI		Returns negative value with a trialing minux sign[-]. returns positive value with a trailing blank. The MI 			format element can appear only in the last position
		example : 99999MI
PR		returns negative value in <Angle Brackets>. Returns positive value with a leading and trailing blank. THe PR 			format element can appear only in the last position of a number format model.
		Example: 9999PR
RN/rn		returns a value as roman numberals in uppercase or lowercase. Value can be an integer between 1 and 3999.
		Example: RN
		Example: rn
S		Returns
		-Negative values with a leading minus sing[-]
		-Positive value with a leading plus sing[+]
		-Negative value with a trialing minus sign[-]
		-positive value with a trialing plus sing[+]
		example , S99999, 9999S
V		returns a value multiplied by 10n[if neccessary, round itup], where n is the number of 9s after the "V"
		example : 999V99
*/