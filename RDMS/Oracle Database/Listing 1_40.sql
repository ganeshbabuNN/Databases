create table ztemp7(a timestamp,b timestamp with time zone,c timestamp with 	local time zone);
insert into ztemp7 values(to_timestamp('12-MAY-2006 10:23:34.678','DD-MON-YYYY		HH:MI:SS.FF'),
to_timestamp_tz('12-may-2006 10:23:34.678 -5:00','dd-mon-yyyy hh:mi:ss.ff		tzh:tzm'),
to_timestamp('12-may-2006 10:23:34.678','dd-mon-yyyy hh:mi:ss.ff'))
/
