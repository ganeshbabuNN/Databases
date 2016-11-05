DECLARE
 v_test VARCHAR2(10);
 BEGIN
  select user into v_test from dual;
end;

--where clause, getting exceptions
DECLARE
 v_test VARCHAR2(10);
 BEGIN
  select user into v_test from dual where dummy='Y';
 end;