create table student
(rn number(3), name varchar2(30), year date, univ  varchar2(10),
branch varchar2(20), en number(4), constraint uk1_student_en unique(en),
constraint pk1_student primary key (rn, year, branch));
