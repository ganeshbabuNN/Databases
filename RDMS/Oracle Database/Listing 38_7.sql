select lpad( ' ' ,decode(lobj.xidusn,0,3,0)) || lobj.oracle_username "username",
 o.owner,o.object_name,o.object_type
 from
 v$locked_object lobj,dba_objects o
 where
 lobj.object_id = o.object_id
 order by o.object_id,1 desc
/
