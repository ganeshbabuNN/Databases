UPDATE BATCH B
SET B.NETINCOME = (SELECT SUM(AMOUNT)
FROM  FEESPAID F1, ENROLLMENT EN1, BATCH B1
WHERE F1.ROLLNO = EN1.ROLLNO
AND EN1.BATCHCODE = B1.BATCHCODE
AND B1.BATCHCODE = B.BATCHCODE)
WHERE EXISTS (SELECT * FROM FEESPAID F2, ENROLLMENT
EN2, BATCH B2
WHERE F2.ROLLNO = EN2.ROLLNO
AND EN2.BATCHCODE = B2.BATCHCODE
AND B2.BATCHCODE = B.BATCHCODE);
