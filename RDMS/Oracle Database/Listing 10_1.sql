create table student_marks 
(rn number(3) not null,
year number(1) not null,
marks number(5,2) not null,
remarks varchar2(20),
constraint ck_student_marks_rn 
check (rn between 1 and 250),
constraint ck_student_marks_year 
check (year between 1 and 3),
constraint ck_student_marks_marks
check (marks between 0 and 100));
