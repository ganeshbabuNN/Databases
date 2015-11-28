/* Create an object type named typCitizen */
	CREATE OR REPLACE TYPE typCitizen AS OBJECT(
		First Varchar2(60),
		Last Varchar2(60),
		Middle Varchar2(30),
		Prefix Varchar2(10),
		Suffix Varchar2(10));
	/

/* Create an object type named typCitizenPersonalDetails */
	CREATE OR REPLACE TYPE typCitizenPersonalDetails AS OBJECT(
		SSN Varchar2(9),
		Gender Varchar2(2),
		DateOfBirth Date,
		Ethnicity Varchar2(25),
		MaritalStatus Varchar2(2),
		Hair Varchar2(10),
		Eyes Varchar2(10),
		Height Varchar2(10));
	/

/* Create an object type named typCitizenEmpDetails */
	CREATE OR REPLACE TYPE typCitizenEmpDetails AS OBJECT(
		JobTitle Varchar2(60),
		StartDate Date,
		Terminated Varchar2(1),
		EndDate Date,
		Salary Number(12, 2));
	/