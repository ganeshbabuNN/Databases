select department_name,e.manager_id,SUM(salary),count(employee_id)
from employees e,departments d
where e.department_id =d.department_id
group by ROLLUP(department_name,e.manager_id);

/*
DEPARTMENT_NAME                MANAGER_ID SUM(SALARY) COUNT(EMPLOYEE_ID)
------------------------------ ---------- ----------- ------------------
IT                                    102        9000                  1 
IT                                    103       19800                  4  - per depname,mangerid
IT                                              28800                  5  -- per depname
Sales                                 100       61000                  5 
Sales                                 145       51000                  6 
Sales                                 146       51000                  6 
Sales                                 147       46600                  6 
Sales                                 148       51900                  6 
Sales                                 149       43000                  5 
Sales                                          304500                 34 
Finance                               101       12008                  1 
Finance                               108       39600                  5 
Finance                                         51608                  6 
Shipping                              100       36400                  5 
Shipping                              120       22100                  8 
Shipping                              121       25400                  8 
Shipping                              122       23600                  8 
Shipping                              123       25900                  8 
Shipping                              124       23000                  8 
Shipping                                       156400                 45 
Executive                                       24000                  1 
Executive                             100       34000                  2 
Executive                                       58000                  3 
Marketing                             100       13000                  1 
Marketing                             201        6000                  1 
Marketing                                       19000                  2 
Accounting                            101       12008                  1 
Accounting                            205        8300                  1 
Accounting                                      20308                  2 
Purchasing                            100       11000                  1 
Purchasing                            114       13900                  5 
Purchasing                                      24900                  6 
Administration                        101        4400                  1 
Administration                                   4400                  1 
Human Resources                       101        6500                  1 
Human Resources                                  6500                  1 
Public Relations                      101       10000                  1 
Public Relations                                10000                  1 
                                               684416                106  --grant total

 39 rows selected 

*/