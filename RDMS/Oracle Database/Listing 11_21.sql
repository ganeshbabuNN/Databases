SELECT TIMEID,AMOUNT,CHANNELID,AVG(AMOUNT) OVER(ORDER BY TIMEID ROWS UNBOUNDED 		PRECEDING) LAST_AMT
FROM SALES_DATA WHERE ROWNUM < 11 ORDER BY 1;