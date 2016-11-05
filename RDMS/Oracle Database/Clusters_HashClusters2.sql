/*
Create a hash cluster named clh_emp2 with the cluster key made up of the columns
job_id and employee_id and uses an SQL expression containing these columns for the
has functions
*/

CREATE CLUSTER clh_emp2(job_id number(10),employee_id number(10)) 
HASHKEYS 20
HASH is MOD(job_id + employee_id,101);