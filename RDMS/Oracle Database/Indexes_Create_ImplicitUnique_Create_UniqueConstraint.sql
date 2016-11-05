Create table books(
ISBN Varchar2(25) PRIMARY KEY,
BookName Varchar2(100) UNIQUE
USING INDEX (CREATE INDEX idx_BookNamei on books(BookName)), --- USING Clause
noOfChapaters number(25),
authorID number(10),
publisherID number(10),
category varchar2(100));
