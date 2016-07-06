set linesize 1000
select s.username, decode( l.type,'tm','table lock','tx','row lock',null) "lock 		level", o.owner, o.object_name,o.object_type
from v$session s, v$lock l,dba_objects o
where
s.sid = l.sid
and o.object_id = l.id1
and s.username is not null
/
