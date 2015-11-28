/* Create a table based on the object types named typCitizen, typCitizenPersonalDetails and table types named ListOfCitizenEmpDetails */
	CREATE TABLE Citizen(
		CitizenNo Number(10) NOT NULL,
		NameDetails typCitizen,
		PersonDetails typCitizenPersonalDetails,
		EmploymentDetails ListOfCitizenEmpDetails DEFAULT ListOfCitizenEmpDetails(),
		PRIMARY KEY (CitizenNo))
	NESTED TABLE EmploymentDetails STORE AS CitizenEmploymentDetails;
	/

/*
-NESTED TABLE clauses identifies the name of the nested table columns in this case EmployeeDetails
-STORE AS Clause specifies the name of the nested table in this case begin typCitizenEmpDetails where the actual elements are stored

*/