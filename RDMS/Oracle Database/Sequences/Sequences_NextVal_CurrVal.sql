drop table students;
CREATE TABLE "STUDENTS" 
("STUDENTNO" VARCHAR2(20) NOT NULL ENABLE, 
"STUDENTNAME" VARCHAR2(25), 
"AGE" NUMBER(2,0),  
CONSTRAINT "STUDENTS_PK" PRIMARY KEY ("STUDENTNO") ENABLE);

drop table studentmarks;
CREATE TABLE "STUDENTMARKS" 
("STUDENTNO" VARCHAR2(20), 
"SEMESTER" VARCHAR2(25), 
"SUBJECT" VARCHAR2(25), 
"MARKS" NUMBER);

--creating the sequence string with required value
drop sequence sq_studentno;
create sequence sq_studentno
increment by 1 start with 1
minvalue 1 maxvalue 999 CYCLE;

select * from students;
delete from students;
select * from studentmarks;
delete from studentmarks;

---insert Master table [students]
insert into students(studentno,studentname,age)
values('S'||to_char(sysdate,'DDMMYYYY') ||
TO_CHAR(sq_studentno.nextval),'ganesh', 28);

---insert Master table [studentmarks]
insert into studentmarks(studentno,semester,subject,marks)
values('S'||to_char(sysdate,'DDMMYYYY') ||TO_CHAR(sq_studentno.Currval),'SemesterII','English',80);
insert into studentmarks(studentno,semester,subject,marks)
values('S'||to_char(sysdate,'DDMMYYYY') ||TO_CHAR(sq_studentno.Currval),'SemesterI','Maths',70);
insert into studentmarks(studentno,semester,subject,marks)
values('S'||to_char(sysdate,'DDMMYYYY') ||TO_CHAR(sq_studentno.Currval),'SemesterII','Kannada',23);
