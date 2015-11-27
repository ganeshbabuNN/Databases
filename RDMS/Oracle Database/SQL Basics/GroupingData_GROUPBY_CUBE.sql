select department_name,e.manager_id,SUM(salary),count(employee_id)
from employees e,departments d
where e.department_id =d.department_id
group by CUBE(department_name,e.manager_id);

/*

DEPARTMENT_NAME                MANAGER_ID SUM(SALARY) COUNT(EMPLOYEE_ID)
------------------------------ ---------- ----------- ------------------
                                                24000                  1 
                                               684416                106 --grant total
                                      100      155400                 14 --per managerid
                                      101       44916                  5 
                                      102        9000                  1 
                                      103       19800                  4 
                                      108       39600                  5 
                                      114       13900                  5 
                                      120       22100                  8 
                                      121       25400                  8 
                                      122       23600                  8 
                                      123       25900                  8 
                                      124       23000                  8 
                                      145       51000                  6 
                                      146       51000                  6 
                                      147       46600                  6 
                                      148       51900                  6 
                                      149       43000                  5 
                                      201        6000                  1 
                                      205        8300                  1 
IT                                              28800                  5 
IT                                    102        9000                  1 -per departname,managerid
IT                                    103       19800                  4 
Sales                                          304500                 34 -per departname
Sales                                 100       61000                  5 
Sales                                 145       51000                  6 
Sales                                 146       51000                  6 
Sales                                 147       46600                  6 
Sales                                 148       51900                  6 
Sales                                 149       43000                  5 
Finance                                         51608                  6 
Finance                               101       12008                  1 
Finance                               108       39600                  5 
Shipping                                       156400                 45 
Shipping                              100       36400                  5 
Shipping                              120       22100                  8 
Shipping                              121       25400                  8 
Shipping                              122       23600                  8 
Shipping                              123       25900                  8 
Shipping                              124       23000                  8 
Executive                                       24000                  1 
Executive                                       58000                  3 
Executive                             100       34000                  2 
Marketing                                       19000                  2 
Marketing                             100       13000                  1 
Marketing                             201        6000                  1 
Accounting                                      20308                  2 
Accounting                            101       12008                  1 
Accounting                            205        8300                  1 
Purchasing                                      24900                  6 
Purchasing                            100       11000                  1 
Purchasing                            114       13900                  5 
Administration                                   4400                  1 
Administration                        101        4400                  1 
Human Resources                                  6500                  1 
Human Resources                       101        6500                  1 
Public Relations                                10000                  1 
Public Relations                      101       10000                  1 

 58 rows selected 

*/