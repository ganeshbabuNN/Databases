ALTER TABLE employees
ADD(CONSTRAINTS phone_number
CHECK (REGEXP_LIKE(phone_number,'^[[:digit]]{2}-[[:digit]]{3}-[[:digit]]{8}$'))); 

--test the constraint

--invalid
insert into employees values('91.021.2224013');

-- valid one
insert into employees values('91-021-2224013');