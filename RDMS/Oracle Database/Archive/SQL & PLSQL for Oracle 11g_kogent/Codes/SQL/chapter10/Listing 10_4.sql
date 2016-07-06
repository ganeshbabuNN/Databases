create table abc
(a number(2), b number(2), c number(2), d number(2),
e number(2), constraint pk1_abc primary key (a,b),
constraint uk1_abc unique (e), constraint uk2_abc unique (c,d));
