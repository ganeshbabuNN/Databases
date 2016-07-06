create type enrollment as object
(rollno number (8),
enquiryno number (8),
batchcode number (5),
member procedure enroll(enqno number),
member procedure cancel(rollno in number)) ;
