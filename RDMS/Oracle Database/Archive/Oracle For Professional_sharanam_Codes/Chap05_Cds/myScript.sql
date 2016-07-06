DROP TABLE Customers
/

COMMIT
/

CREATE TABLE Customers (
CustNo INTEGER NOT NULL,
CustName VARCHAR2(50) NOT NULL, 
Address VARCHAR2(50), 
PRIMARY KEY (CustNo))
/

INSERT INTO Customers VALUES (1, 'Sharanam', 'Krihna Kunj, Mumbai')
/
INSERT INTO Customers VALUES (2, 'Vaishali',  'Balgovinddas Society, Delhi')
/
INSERT INTO Customers VALUES (3, 'Stuti', 'Makanji Mansion, Mumbai')
/
INSERT INTO Customers VALUES (4, 'Chaitanya', 'Prakash Towers, Pune')
/

UPDATE Customers SET Address='Advani Apts, Pune' WHERE CustName='Chaitanya'
/

CREATE INDEX idxCustomers on Customers(CustName)
/