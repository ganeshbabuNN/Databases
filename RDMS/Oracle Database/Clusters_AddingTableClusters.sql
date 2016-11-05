--creating the clusters
create cluster cli_emp (employee_id number(10));

--add the cluster
create table employees(
employee_id number(10) PRIMARY KEY,
first_name varchar2(30),
last_name varchar2(30))
CLUSTER cli_emp(employee_id);

create table jobs(
job_id number(10) PRIMARY KEY,
employee_id number(10),
hire_date date)
CLUSTER cli_emp(employee_id);

/*
After a cluster is created and tables are added to the cluster, Oracle physically stores the
jobs table rows on the same data block as the employeees table rows, thereby reducing 1/O
by a factor of ten
*/

--creating the index on the cluster key of employee_id
create index idx_employee_id on cluster cli_emp;

---After Creating cluster index, record can be inserted into either of the two tables;
