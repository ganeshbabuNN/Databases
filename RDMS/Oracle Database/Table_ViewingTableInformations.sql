--use sysdba access

Select table_name,column_name,data_type,data_length
from dba_tab_columns
where owner='HR'
order by table_name;

