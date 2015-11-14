Update table_name
 set columnname= (Select AVG(Column_name) from table_name); --returns single row Subquery