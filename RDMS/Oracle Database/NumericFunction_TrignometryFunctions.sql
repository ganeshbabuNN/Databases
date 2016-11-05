drop table trig;
CREATE TABLE trig
( trigno NUMBER(10,8));

insert into trig values(0);
insert into trig values(1);
insert into trig values(1.570796);
insert into trig values(3.141592);
insert into trig values(-1);
insert into trig values(-1.570796);
insert into trig values(-3.141592);

select * from trig;


---trignometric functions scenario 1
select trigno,
       sin(trigno),
       ASIN(MOD(trigno,1)),
       SINH(trigno)
from trig;


---trignometric functions scenario 2
select trigno,
       cos(trigno),
       acos(MOD(trigno,1)),
       cosh(trigno)
from trig;

---trignometric functions scenario 3
select trigno,
       tan(trigno),
       tanh(trigno)
from trig;

