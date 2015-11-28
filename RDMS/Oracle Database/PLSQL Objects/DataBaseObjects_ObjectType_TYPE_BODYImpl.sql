/* Create an object named Book */
	CREATE TYPE typBook AS OBJECT (
		BookName Varchar2(100),
		ISBN Varchar2(50), 
		Description Varchar2(1000),
		Price Number(12,2),
		Author typAuthor,
		Publisher typPublisher,
		NoOfPages Number(4),
		NoOfChapters Number(4),
		MEMBER FUNCTION GetBookPrice(varDiscount Number) RETURN Number);
	/

/* Create a body for the object named Book */
	CREATE TYPE BODY typBook AS 
		MEMBER FUNCTION GetBookPrice(varDiscount Number) RETURN Number 
		IS
		varBookPrice Number(12, 2);
		BEGIN
			SELECT (Price - (Price * varDiscount/100)) INTO varBookPrice FROM DUAL;
			RETURN varBookPrice;
		END;
	END;
	/