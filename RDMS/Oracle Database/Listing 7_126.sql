DELETE FROM BRANCH WHERE BNAME IN
(SELECT BNAME FROM DEPOSIT GROUP BY BNAME HAVING AVG(AMOUNT) < 5000);
