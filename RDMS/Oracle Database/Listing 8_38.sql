SELECT E1.FNAME||� �||E1.SNAME NAME
FROM ENQUIRY E1, ENQUIRY E2
WHERE E1.CITY = E2.CITY
AND E2.FNAME = �ANIL�
AND E2.SNAME = �SHARMA�;
