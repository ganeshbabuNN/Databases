create table newparent(a number(2), b number(2),
constraint pk1_parent primary key(a));
create table newchild(a number(2), c number(2),
constraint fk1_child foreign key(a) references newparent(a));
select * from newparent;
