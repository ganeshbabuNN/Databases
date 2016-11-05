create table batch
(
batchcode number(5) not null,
coursecode number(2) not null,
startingdate date not null,
duration number(3) not null,
coursefees number(10,2) not null,
netincome number(10,2),
expectedincome number(10,2),
lastno number(3) );
