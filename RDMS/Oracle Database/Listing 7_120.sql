UPDATE DEPOSIT SET AMOUNT = AMOUNT + 10
WHERE CNAME IN(SELECT D1.CNAME FROM DEPOSIT D1 GROUP BY D1.CNAME
HAVING AVG(D1.AMOUNT) > ALL (SELECT AVG(D2. AMOUNT) FROM DEPOSIT D2));