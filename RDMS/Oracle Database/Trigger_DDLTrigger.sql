--creating a DDL Trigger
drop table ddlaudittrial;
create table ddlaudittrial(
EVENTNAME varchar2(23),
objectowner varchar2(20),
objectname varchar2(20),
objectype varchar2(20),
operator  varchar2(20),
operationdate date
);
/
--
Create or replace trigger DDLAudit
 before create or drop on schema
begin
  insert into ddlaudittrial(
  select ora_sysevent,ora_dict_obj_owner,
  ora_dict_obj_name,Ora_dict_obj_type,user,sysdate
  from dual);
end DDLAudit;
/

--test the trigger and check the audit table
select * from DDLAudittrial;

--by creating
create table mytable(column1 varchar2(20),column2 varchar2(23));
create view vmytable as select * from mytable;
create index idxmytable on mytable(column1);
drop index idxmytable;
drop table mytable;
drop view vmytable;

