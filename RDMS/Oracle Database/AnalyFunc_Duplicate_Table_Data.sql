Duplicate Table data
-----------------------
*To resolve such an issues, analytic functions can be used
*This will be done as follows
1)Write an analytic query that partitions the records on the basis of the employee_id column
2)Use the ROW_NUMBER() function to allot number to the rows in each partition
a)if no duplicates are encountered, the partitions will have only one row that is numbered 1
b)if duplicates are encountered, the duplicate rows will be numbered 2,3 and so on.

select rowid,
       employee_id,
       first_name,
       row_number() OVER(Partition by first_name order by first_name) RN
from employees
order by first_name;

this query returns ROWIDs that can be used to uniquely identify rows whilst deleting them later

3)use this query as an inline view in another SQL query that uses a WHERE clause to avoid all rows that are numbered 1 and thus return only the duplicates

select rowid,RN from (
select rowid,
       employee_id,
       first_name,
       row_number() OVER(Partition by first_name order by first_name) RN
from employees
order by first_name)
where RN >1;

4)Use a DELETE query that uses the IN operator with the above SQL query as the source to delete all such duplicates

delete from employees where rowid IN(
select rowid from (
select rowid,
       employee_id,
       first_name,
       row_number() OVER(Partition by first_name order by first_name) RN
from employees)
where RN >1);