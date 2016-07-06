create table student
(rn number(3) not null, 
city varchar2(20) not null,
name varchar2(30) not null,
constraint ck1_student_rn
check (rn between 1 and 250),
constraint ck2_student_name 
check(name between ‘a’ and ‘z’),
constraint ck3_student_city
check(length(city) between 1 and 3 and city between ‘a’ and ‘z’),
check (substr(name,1,1) between ‘a’ and ‘z’),
constraint ck4_student_city
check (length (city) = 3 and city = upper (city)));
