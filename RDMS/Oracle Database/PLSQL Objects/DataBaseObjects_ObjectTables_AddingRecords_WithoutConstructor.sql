--check the table;
select * from bestbooks;

--Inserting without using constructor
INSERT INTO bestbooks
		VALUES ('Java for Experienced Architect', 'E-32-2343-BB', 'A book for Serious Architect professional', 533, 
				typAuthor('Ganesh Babu', 
					typContactDetails('Ulsorr Road', 'IT Road', 'Bangalore', 'karnataka', 560014, 'India', '91-9744737373')), 
				typPublisher('Wrox', 
					typContactDetails('CDIX', 'New Delhi', 'Delhi', 'Delhi', 400098, 'India', '91-022-43534534')), 
			5000, 32);

