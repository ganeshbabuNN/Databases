---Student tabe
drop table students;
create table students (
student_no varchar2(10) PRIMARY KEY,
student_name varchar2(25),
age number(10)
);

--Now Creating the sequences
drop sequence sqstudents;
CREATE SEQUENCE sqStudents INCREMENT BY 1 START WITH 1;

SELECT sqStudents.CURRVAL FROM Dual;

--Creating
create or replace trigger GStudentno
  BEFORE INSERT ON students
 FOR EACH ROW
 DECLARE
  maxStudentNo varchar2(10);
  newStudentNo varchar2(10);
begin
  select nvl(max(to_number(substr(student_no,2))),0) into maxStudentNo from students;
  newStudentNo :=to_char((to_number(maxStudentNo)+1));
  :NEW.student_no :='S'|| newStudentno;
end;
/

/*
--this trigger fires every time a record is being inserted in the students table
--the record is inserted where studentno is generated by sequence
--the trigger fetches the next value available in this sequences and preceds it will "S"
*/

select * from students; --check the max no
--insert the data
INSERT INTO Students(student_name,age) values('ganesh', 22); --now the trigger fires the StudentNo Column value can be using :NEW StudentNo
INSERT INTO Students(student_name,age) values('vedha', 20);
INSERT INTO Students(student_name,age) values('kalyani', 40);
INSERT INTO Students(student_name,age) values('gajenthiran', 50);

--restest the value by removing the data and insert again, it need to start again with first
truncate table students;