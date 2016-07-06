conn system@xe

alter user hr account unlock;

alter user hr identified by hr;

grant create table to hr;

