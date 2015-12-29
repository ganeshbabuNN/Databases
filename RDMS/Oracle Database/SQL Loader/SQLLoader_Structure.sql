LOAD DATA
INFILE 'path'
BADFILE 'path'
DISCARDFILE ''
INSERT INTO Table <Tablename>
FIELD TERMINATED BY "," OPTIONALLY ENCLOSED BY '"' TRAILING
NULLCOLS(<column_name1>,<column_name2>,<column_name3>,<column_name4>)

Where
**The LOAD DATA statements is required at the begining of the control file
**The INFILE options specifies where the input file is located
**Specifying BADFILE is optional.If Specified, then bad records found during loading are stored in the file
**Specifying DISCARDFILE is optional. if specified , then records which do not meets a WHEN Conditions are written to this file.
**Any of the following loading options can be used
-INSERT: Loads rows only if the target table is empty
-APPEND:Loads rows if the target table is empty or not empty
-REPLACE:First deletes all the rows in the existing table and then, load rows
-TRUNCATE: first truncates the tables and then load rows
**FIELDS TERMINATED BY indicates how the fields are separated in input file. Since in this case the fields are separated by ",", the same is indicated here
**TRAILING NULLCOLS indicates if the last column is null then treat this as null value, so SQL*LOADER treats the record as bad if the last column is null


LOAD DATA
INFILE '/Mydata/employees.txt'
INTO Table employees
(employee_no POSITION(01,09) INTEGER EXTERNAL,
first_name POSITION(10,30) CHAR,
last_name POSITION(29,44) CHAR,
salary POSITION(45,54) INTEGER EXTERNAL,
dept_no POSITION(55,59) INTEGER EXTERNAL,
gender POSITION(1,10) CHAR
)

WHERE
**The LOAD DATA statements is required at the begining of the control file
**the name of the file containing data follows the INFILE parameter
**the INTO TABLE statements is required to identify the table to be loaded into
**Column names are specified using()
**The data types (INTEGER EXTERNAL, CHAR,DECIMAL,EXTERNAL) identify the data type of data fields in the file, not of the corresponding columns in the employees table in Oracle DB

--Invoke SQL*Lader utility as
sqldr userid=ganesh/<password> control=<filename>.ctl log=<filename>.log 