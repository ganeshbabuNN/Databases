/*
create a hash cluster named clh_employees with the cluster key column as 
employee_id a maximum of 503 hash key values, each of size 512 bytes and following
the storage parameters values:
INITIAL 100K
NEXT 50K
PCTINCREASE 10
*/

Create CLUSTER clh_emp(employee_id number(10))
size 512 HASHKEYS 500
STORAGE (initial 100K NEXT 50K PCTINCREASE 10);

/*
HERE, the HASH IS Clause is not specified and hence Oracle uses the internal has functions for the clusters.
*/