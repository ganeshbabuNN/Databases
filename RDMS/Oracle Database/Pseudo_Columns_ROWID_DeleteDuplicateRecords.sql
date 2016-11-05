delete from customers where rowID NOT IN 
(Select min(rowID) from customers group by customerNo,customername,address);

/*
the values for the WHERE clause in the DELETE command are provided by a subquery
that retrieves the ROW ID of the first row in each set of duplicate records 
in the table

-To Achieve this,a record should be uniquely identifiable which in this case seems impossible as all column values hold duplicate data, which disallows unique identification of a row that is to be retained
-In such a scenario, oracle pseudo column RowID can be put in use. A Row ID will always be unique for every record in the table, A rowID will always be unique for every record in the table, even if those records holds duplicate daEta.
-Every record in a table is stored within a block in the data file. Each record in a block is given a unique record number.Thus at any time, the value in the rowID column will alwas be unique.
-THis is only the solution that can be applied to retain one single record and delete the duplicate records for the same customers.
-THis SQL query groups duplicate records and amongest these duplicate records since one record has to be retained, the ROWID that is the lowest amongst the duplicate records is extracted.
-the first row in each set of duplicate records is extracted using the MIN functions that returns the min value from a set of values
-the parent query's WHERE clause using the NOT IN operator skips deleting all those ROWID that the subquery returns
-since the subquery returns the lowest ROWID of every set of duplicate records, one record frome ach such set of duplicate records is retained
-Since oracle executes the subquery, prior to exeucting the parent SQL command, the parent query i,e the DELETE commadn is fired basedon the values retrieved by the subquery.
-In real time, when subquery is fired is fired the following records are held in the memory that are passed to the parent query.
-after subquery compelts its execution, oracle replaces the values in the parent query's WHERE clause with the lowest ROWID, thus delete command will be

DELETE FROM customer WHERE ROWID NOT IN ( .......... );
*/