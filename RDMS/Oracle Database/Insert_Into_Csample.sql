create table csample(sn number,c1 complextab,c2 complextab)
nested table c1 store as nc1, nested table c2 store as nc2;

insert into csample 
values(2,complextab(complex(12,3),
complex(4,5)),complextab(complex(2,9),complex(4,5)));
