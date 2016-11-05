--  +-		Positive or Negative expression
select * from employees where salary =-1;
-- +		Addition
select salary+2000 "increment" from employees;

---		- Subtraction
select (salary+2000)-salary "pf" from employees;

--*		Multiplication
select salary*12 "ann" from employees;

--**		Exponentiation
select salary**12 "ann" from employees;

--/		Division
select salary/30 from employees;

--()		Enclosed Operations
select (salary/30) from employees;
 
 
 