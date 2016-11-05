--ADD_MONTH() returns date after adding the number of months specified in the function  

select sysdate, add_months(sysdate,4) "Add months" from dual;