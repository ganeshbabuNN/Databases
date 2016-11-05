--Create the lookup table
drop table Pkeys;
create table PKeys(
tableName varchar2(50),
nextValue varchar2(10)
);

---Students table
drop table students;
create table students (
student_no varchar2(10) PRIMARY KEY,
student_name varchar2(25),
age number(10)
);

--Creating Trigger using the lookup table
create or replace trigger GStudentno
  BEFORE INSERT ON students
 FOR EACH ROW
 DECLARE
  lookupStudentNo varchar2(10);
  newStudentNo varchar2(10);
begin
  begin
    select nextvalue into lookupStudentNo from Pkeys
      where tableName='students';
    exception
      when no_data_found then lookupStudentNo :='S1';
  end;
  
  :NEW.student_no := lookupStudentNo;
  newStudentNo := to_number(substr(lookupStudentNo,2))+1;
  lookupStudentNo := 'S'||newStudentNo;
  
  if lookupStudentNo ='S2' then
    insert into Pkeys values ('students',lookupStudentNo);
  else
    update pkeys set nextvalue =lookupStudentNo
      where tablename='students';
  end if;
end;
/

--restest the value by removing the data and insert again, it need to start again with first
truncate table students;
truncate table pkeys;

--check the data
select * from students; --check the max no
select * from pkeys;
--inserting the data
INSERT INTO Students(student_name,age) values('ganesh', 22); --now the trigger fires the StudentNo Column value can be using :NEW StudentNo
INSERT INTO Students(student_name,age) values('vedha', 20);
INSERT INTO Students(student_name,age) values('kalyani', 40);
INSERT INTO Students(student_name,age) values('gajenthiran', 50);

/*
--the new record was added for the first insert query as none existed.
--for the subsequent insert queries the value was updated.
*/
