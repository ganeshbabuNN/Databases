--create the table
drop table WroxBooks;
CREATE TABLE WroxBooks(
		BookDetails typBook,
		QtySold Number(12),
		AmtSold Number(12,2));

---insert the records in the table via Objects
INSERT INTO WroxBooks (BookDetails, QtySold, AmtSold) 
		VALUES (
			typBook('Java for Architect', 'E-32-322-BB', 'A book for Serious Architect', 450, 
				typAuthor('Ganesh Babu', 
					typContactDetails('Ulsorr Road', 'IT Road', 'Bangalore', 'karnataka', 560014, 'India', '91-9744737373')), 
				typPublisher('Wrox', 
					typContactDetails('CDIX', 'New Delhi', 'Delhi', 'Delhi', 400098, 'India', '91-022-43534534')), 
			5000, 32), 
		1300, 20000);
	INSERT INTO WroxBooks (BookDetails, QtySold, AmtSold) 
		VALUES (
			typBook('Java for Beginner', 'E-32-23423-BB', 'A book for Serious Java Students', 250, 
				typAuthor('Ganesh Babu', 
					typContactDetails('Ulsorr Road', 'IT Road', 'Bangalore', 'karnataka', 560014, 'India', '91-9744737373')), 
				typPublisher('Wrox', 
					typContactDetails('CDIX', 'New Delhi', 'Delhi', 'Delhi', 400098, 'India', '91-022-43534534')), 
			1200, 23), 
		1300, 20000);
    	INSERT INTO WroxBooks (BookDetails, QtySold, AmtSold) 
		VALUES (
			typBook('Hadoop for Java Developers', 'E-32-23432423-BB', 'A book for java developers', 300, 
				typAuthor('Ganesh Babu', 
					typContactDetails('Ulsorr Road', 'IT Road', 'Bangalore', 'karnataka', 560014, 'India', '91-9744737373')), 
				typPublisher('Wrox', 
					typContactDetails('CDIX', 'New Delhi', 'Delhi', 'Delhi', 400098, 'India', '91-022-43534534')), 
			1111, 323), 
		1340, 320000);


---the above statement is structured in the form of INSERT INTO

typBook(BookName,ISBN,Description,Price,
typAuthor(AuthorName,
typContactDetails(Address1,Address2,City,State,Pincdoe,County,Contact Number)),
typPublisher(PublisherName,
typContactDetails(Address1,Address2,City,State,Pincdoe,Country,Contact Number)),
No of pages, no of chapater),
QtySold,QtyAmtSold


typPublisher();
