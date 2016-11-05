-In Non-ANSI standard implementations the join operation is performed in the WHERE clause. this join method is known as the Theta style

SELECT <Column_name1>,<Column_name2>,<Column_nameN>
FROM <TableName1> ,<TableName2>
WHERE <TableName1>.<Column_name1>=<TableName2>.<Column_name1>
AND <Condition>
ORDER BY <Column_name1>,<Column_name2>,<Column_nameN>;

Where
-<Column_name1> in <TableName1> is usually that table Primary Key
-<Column_name2> in <TableName2> is a Foreign Key in that table.
-Both <Column_name1>,<Column_name2> must have a same data type and for certain data types, the same size