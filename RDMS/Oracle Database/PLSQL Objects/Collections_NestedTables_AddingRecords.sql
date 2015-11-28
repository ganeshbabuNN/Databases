INSERT INTO Citizen VALUES(1, 
		typCitizen('Banu', 'babu', 'Ganesh', 'Mrs.', 'M.C.A'),
		typCitizenPersonalDetails('G113EAE', 'F', '15-Aug-1978', 'Hindu', 'M', 'Black', 'Brown', '6.3 inch'),
		ListOfCitizenEmpDetails(
			typCitizenEmpDetails('functional Programmer', '01-OCT-2013', 'Y', '01-DEC-2070', 25000), 
			typCitizenEmpDetails('Vice President', '01-OCT-2021', 'Y', '01-OCT-2070', 5300000)));
INSERT INTO Citizen VALUES(2, 
		typCitizen('G', 'babu', 'Ganesh', 'Mrs.', 'M.C.A'),
		typCitizenPersonalDetails('G113EAE', 'F', '15-Aug-1978', 'Hindu', 'M', 'Black', 'Brown', '6.3 inch'),
		ListOfCitizenEmpDetails(
			typCitizenEmpDetails('functional Programmer', '01-OCT-2013', 'Y', '01-DEC-2070', 25000), 
			typCitizenEmpDetails('Vice President', '01-OCT-2021', 'Y', '01-OCT-2070', 5300000)));