UPDATE DEPOSIT
SET AMOUNT = AMOUNT � 10 WHERE CNAME = �ANIL� AND BNAME IN
(SELECT D1.BNAME FROM DEPOSIT D1 WHERE D1.CNAME = �SUNIL�);
UPDATE DEPOSIT
SET
AMOUNT = AMOUNT + 10 WHERE CNAME = �SUNIL� AND BNAME IN
(SELECT D1.BNAME FROM DEPOSIT D1 WHERE D1.CNAME = �ANIL�);
