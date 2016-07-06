LOAD DATA
INFILE	'/MyData/CSV/MumbaiEmployees.csv'
BADFILE	 '/MyData/CSV/MumbaiEmployees.bad'
DISCARDFILE	 '/MyData/CSV/MumbaiEmployees.dsc'
INSERT INTO TABLE MumbaiEmployees
FIELDS TERMINATED BY "," OPTIONALLY ENCLOSED BY '"' (EmployeeNo, FirstName, LastName, Salary, DeptNo, Gender)