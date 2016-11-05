select sq_studentno.currval from dual;

---increatement by 124
alter sequence sq_studentno
increment by 124;

--check
select sq_studentno.nextval from dual;

--alter reset the increment by to 1
alter sequence sq_studentno
increment by 1;


--check
select sq_studentno.nextval from dual;

