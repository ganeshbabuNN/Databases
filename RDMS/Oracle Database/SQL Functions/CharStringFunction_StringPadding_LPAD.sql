--if size is greater then the string, add the padded string as prefix leading
select LPAD('Oracle',10,'@') "LPAD" from dual;
-- if size is less than the string, its will not get padded and display that length of the string
select LPAD('Oracle',5,'@@@@@@') "LPAD" from dual;