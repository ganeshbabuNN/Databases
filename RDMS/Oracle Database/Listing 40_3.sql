select tablespace_name, segment_name, segment_type, sum(bytes), 		count(extent_id) from dba_extents
where segment_type = 'TYPE2 UNDO' group by tablespace_name,     		segment_name,segment_type;
