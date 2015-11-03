select * from cust_matrix;

Puchase Frequency   New York Connecticut New Jersey    Florida   Missouri
----------------- ---------- ----------- ---------- ---------- ----------
                1          0           1          0          0          0
                2          0           0          1          0          0
                4          0           0          0          1          0
                9          0           0          0          0          1
               10          1           0          0          0          0

-- Here the each column name has become a value in the STATE_CODE column and STATE_CODS is the name of the new column created in the resultant output.
-- All task are  automated operations are done by clause just above the FOR clause inside the unpivot operator in the below query.

select *
  from cust_matrix
unpivot
(
    state_cods
    for state_code in ("New York","Connecticut","New Jersey","Florida","Missouri")
)
order by "Puchase Frequency", state_code;

output
*******
Puchase Frequency STATE_CODE  STATE_CODS
----------------- ----------- ----------
                1 Connecticut          1
                1 Florida              0
                1 Missouri             0
                1 New Jersey           0
                1 New York             0
                2 Connecticut          0
                2 Florida              0
                2 Missouri             0
                2 New Jersey           1
                2 New York             0
                4 Connecticut          0
                4 Florida              1
                4 Missouri             0
                4 New Jersey           0
                4 New York             0
                9 Connecticut          0
                9 Florida              0
                9 Missouri             1
                9 New Jersey           0
                9 New York             0
               10 Connecticut          0

