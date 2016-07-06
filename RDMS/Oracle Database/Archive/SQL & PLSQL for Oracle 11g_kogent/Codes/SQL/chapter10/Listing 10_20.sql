create table t2	
(a number(2), b number(2),	c number(2),	
constraint ck_a check (a>1), constraint ck_b check (b>1),
constraint ck_c check (c>1)
