UPDATE DEPOSIT
SET AMOUNT = AMOUNT + 100 WHERE CNAME = �ANIL�;
UPDATE DEPOSIT
SET AMOUNT = (SELECT AMOUNT FROM DEPOSIT WHERE CNAME = �ANIL�)
WHERE CNAME = �SUNIL�;
