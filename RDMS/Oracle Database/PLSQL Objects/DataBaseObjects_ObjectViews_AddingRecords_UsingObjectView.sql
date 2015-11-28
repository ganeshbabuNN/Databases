select * from BESTSELLINGBOOKS;

/* Adding records in the BESTSELLINGBOOKS using the objVwBESTSELLINGBOOKS view */
	INSERT INTO objVwBESTSELLINGBOOKS
		VALUES ('Hadoop for Beginner', 'X-32432-ER-23', 'Beginner series', 222, 
				typAuthor('Ganesh Babu', 
					typContactDetails('Deccan Road', 'IT Road', 'Bangalore', 'Karnataka', 400057, 'India', '91-022-23423432')), 
				typPublisher('Wrox', 
					typContactDetails('M.G', 'New delhi', 'delhi', 'delhi', 400035, 'India', '91-022-4345345')), 
			800, 16);
      INSERT INTO objVwBESTSELLINGBOOKS
		VALUES ('Hadoop1 for Beginner', 'X-34534-ER-33', 'Beginner1 series', 5323, 
				typAuthor('Ganesh Babu', 
					typContactDetails('Deccan Road', 'IT Road', 'Bangalore', 'Karnataka', 400057, 'India', '91-022-23423432')), 
				typPublisher('Wrox', 
					typContactDetails('M.G', 'New delhi', 'delhi', 'delhi', 400035, 'India', '91-022-4345345')), 
			232, 11);
      
--check the table
select * from BESTSELLINGBOOKS;

--check the view
select * from objVwBESTSELLINGBOOKS;

