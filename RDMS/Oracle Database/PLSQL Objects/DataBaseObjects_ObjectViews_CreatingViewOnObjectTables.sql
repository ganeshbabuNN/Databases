--Creating a view that includes all columns of the existing relational table named, bestsellingbooks table along with  author 
--and publisher details with the help of object types.

CREATE OR REPLACE VIEW objVwBESTSELLINGBOOKS (BookName, ISBN, Description, Price, Author, Publisher, NoOfPages, NoOfChapters) AS 
		SELECT 
			BookName, ISBN, Description, Price, 
				typAuthor(hsb.AuthorName, 
					typContactDetails(hsb.AuthorAddress1, hsb.AuthorAddress2, hsb.AuthorCity, hsb.AuthorState, hsb.AuthorPincode, hsb.AuthorCountry, hsb.AuthorContactNo)), 
				typPublisher(hsb.PublisherName, 
					typContactDetails(hsb.PublisherAddress1, hsb.PublisherAddress2, hsb.PublisherCity, hsb.PublisherState, hsb.PublisherPincode, hsb.PublisherCountry, hsb.PublisherContactNo)), 
			NoOfPages, NoOfChapters
		FROM BESTSELLINGBOOKS hsb;