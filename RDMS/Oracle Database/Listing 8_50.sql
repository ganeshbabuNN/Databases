SELECT FNAME
FROM ENQUIRY E1
WHERE EN_ST = �Y�
AND
NOT EXISTS
(SELECT * FROM ENROLLMENT EN1,FEESPAID F1
WHERE EN1.ENQUIRYNO = E1.ENQUIRYNO
AND EN1.ROLLNO = F1.ROLLNO);
