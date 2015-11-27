select first_name || ' ' || last_name ||
       decode(email,NULL,NULL,CHR(10) ||email) ||
       decode(phone_number,NULL,NULL,CHR(10) ||phone_number) ||
       decode(salary,NULL,NULL,CHR(10)||salary) || CHR(10) as "EmployeeDetails"
from employees;

/*
the query returns a single formattted column pers EmployeeDetails. the DECODE statement is usedto specify IF-THEN-ELSE conditions within SQL and executes as follows. if the email string is null then contacates  NULL, otherwise insert a linefeed character folowing by the address string

EmployeeDetails                                                                                                                     
----------
Steven King                                                                                                                             
SKING                                                                                                                                   
515.123.4567                                                                                                                            
24000                                                                                                                                   
                                                                                                                                        

Neena Kochhar                                                                                                                           
NKOCHHAR                                                                                                                                
515.123.4568                                                                                                                            
17000                                                                                                                                   
                                                                                                                              */

select first_name || ' ' || last_name || CHR(10) || email || ',' ||phone_number
      ||',' || hire_date as "EmployeeDetails"
from employees;

/*
Shelley Higgins                                                                                         
SHIGGINS,515.123.8080,07-JUN-02                                                                         

William Gietz                                                                                           
WGIETZ,515.123.8181,07-JUN-02   

*/