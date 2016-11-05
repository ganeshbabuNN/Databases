DELETE FROM DEPOSIT WHERE CNAME IN
(SELECT D1.CNAME FROM DEPOSIT D1 GROUP BY D1.CNAME HAVING COUNT(D1.CNAME) BETWEEN 1 AND 3);