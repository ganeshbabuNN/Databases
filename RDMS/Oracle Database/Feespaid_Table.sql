create table feespaid
(
rollno number(8) not null,
feespaiddate date not null,
chequeno varchar2(10),
bankname varchar2(30),
remarks varchar2(30),
amount number(10,2));
