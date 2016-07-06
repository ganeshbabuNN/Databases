select z.usn "rsegment_no",z.name "rsegment_name", z1.username ,z.status from 
(select v1.usn usn,v1.name name,v2.status status from v$rollname v1,v$rollstat  		v2 where v1.usn = v2.usn and xacts>0)z, 
(select v.username username, v1.xidusn usn from v$session v,v$transaction v1 
where v.saddr = v1.ses_addr) z1 
where 
z.usn = z1.usn ;
or 
select v2.usn"rsegment_no",v3.name "rsegment_name",v.username ,v2.status from 		v$session v,v$transaction v1,v$rollstat v2,v$rollname v3 
where v.saddr = v1.ses_addr 
and v1.xidusn = v2.usn 
and v2.usn = v3.usn 
/
