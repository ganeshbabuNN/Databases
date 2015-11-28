--check the table;
select * from bestbooks;

--Inserting
INSERT INTO bestbooks
		VALUES (
			typBook('Java for Architect', 'E-32-322-BB', 'A book for Serious Architect', 450, 
				typAuthor('Ganesh Babu', 
					typContactDetails('Ulsorr Road', 'IT Road', 'Bangalore', 'karnataka', 560014, 'India', '91-9744737373')), 
				typPublisher('Wrox', 
					typContactDetails('CDIX', 'New Delhi', 'Delhi', 'Delhi', 400098, 'India', '91-022-43534534')), 
			5000, 32));
	INSERT INTO  bestbooks
		VALUES (
			typBook('Java for Beginner', 'E-32-23423-BB', 'A book for Serious Java Students', 250, 
				typAuthor('Ganesh Babu', 
					typContactDetails('Ulsorr Road', 'IT Road', 'Bangalore', 'karnataka', 560014, 'India', '91-9744737373')), 
				typPublisher('Wrox', 
					typContactDetails('CDIX', 'New Delhi', 'Delhi', 'Delhi', 400098, 'India', '91-022-43534534')), 
			1200, 23));
    	INSERT INTO bestbooks 
		VALUES (
			typBook('Hadoop for Java Developers', 'E-32-23432423-BB', 'A book for java developers', 300, 
				typAuthor('Ganesh Babu', 
					typContactDetails('Ulsorr Road', 'IT Road', 'Bangalore', 'karnataka', 560014, 'India', '91-9744737373')), 
				typPublisher('Wrox', 
					typContactDetails('CDIX', 'New Delhi', 'Delhi', 'Delhi', 400098, 'India', '91-022-43534534')), 
			1111, 323));

