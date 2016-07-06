create table student_marks 
(RN1							--child column
year							--child column
marks							--child column
constraints FK_student_marks
Foreign key (RN1) 					--child column
References student (RN) on delete cascade  	--parent table for set null 									--use ‘References student 									--(RN) on delete set null’  
