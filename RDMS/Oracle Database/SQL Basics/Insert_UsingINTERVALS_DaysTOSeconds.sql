drop table bookrentals;
create table bookrentals(
rentno number(10) PRIMARY KEY,
BookName varchar2(25),
MemberNo Number(10),
RentDate Date,
Duration INTERVAL DAY(2) TO SECOND);

insert into bookrentals(rentno,bookname,memberno,rentdate,duration)
values(3,'Ganesh',1,'01-JAN-2007',INTERVAL '1 1:20:30.15' DAY TO SECOND); -- One year  3 months

select * from bookrentals;

drop table bookrentals;