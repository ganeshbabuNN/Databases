DELETE FROM DEPOSIT WHERE CNAME IN (�ANIL�, �SUNIL�) AND EXISTS
(SELECT * FROM DEPOSIT D1, DEPOSIT D2 WHERE D1. CNAME IN (�ANIL�,�SUNIL�) AND D2.CNAME = �VIJAY� AND D1.AMOUNT < D2.AMOUNT);
