Variable Totalsalary NUMBER;
UPDATE employees SET salary = salary*1.10
returning SUM(Salary) INTO :totalsalary;