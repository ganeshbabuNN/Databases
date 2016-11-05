create table child
(d number(2), e number(2), f number(2),
constraints fk_child foreign key (e,f)
references parent (b,c));
