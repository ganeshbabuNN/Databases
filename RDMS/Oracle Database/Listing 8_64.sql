SELECT TO_CHAR(A.FEESPAIDDATE,�MM�), TO_CHAR (A. FEESPAIDDATE, �MON�), 
SUM(A.AMOUNT) FROM FEESPAID A
GROUP BY TO_CHAR(A. FEESPAIDDATE,�MM�), TO_CHAR (A. FEESPAIDDATE, �MON�)
ORDER BY 1;
