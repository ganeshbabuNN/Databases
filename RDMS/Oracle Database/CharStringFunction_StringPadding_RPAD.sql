--if size is greater then the string, add the leftpadded string as prefix leading
select RPAD('Oracle',10,'@') "RPAD" from dual;
-- if size is less than the string, its will not get padded and display that length of the string
select RPAD('Oracle',5,'@@@@@@') "RPAD" from dual;