create table child(a number(2),
                   c number(2),
constraint fk_child foreign key(a)
references parent(a))
/
