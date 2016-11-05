select 5000*12 As "Annual Salary",
       5000*10/100 As "increment",
       5000+(5000*10/1000) as "monthly salary increment",
       (5000*12)+(5000*10/100)*12 As "Annual Salar after increment"
FROM dual;
       