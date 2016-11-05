desc dbaudittrail;
drop table dbaudittrail;
create table dbaudittrail (
operator varchar2(25),
shutodwndate date
);
--
create or replace trigger DBAduit
before shutdown on database
begin
  insert into dbaudittrail(select user,sysdate from dual);
end;

--test the trigger
SHUTDOWN immediate;

--check the audit tabel
select * from dbaudittrail;
