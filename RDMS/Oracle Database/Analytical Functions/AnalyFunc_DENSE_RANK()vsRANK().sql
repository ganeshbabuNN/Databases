select * from (
select department_id,
       first_name,
       salary,
       DENSE_RANK() OVER(partition by department_id order by salary ASC) topTwoProducts1,
       RANK()OVER(partition by department_id order by salary ASC) topTwoProducts2
from employees)
WHERE toptwoproducts1 <=3;

DEPARTMENT_ID FIRST_NAME               SALARY TOPTWOPRODUCTS1 TOPTWOPRODUCTS2
------------- -------------------- ---------- --------------- ---------------
           10 Jennifer                   4400               1               1 
           10 Kimberely                7717.5               2               2 
           20 Pat                        6000               1               1 
           20 Michael                   13000               2               2 
           30 Karen                      2500               1               1 
           30 Guy                        2600               2               2 
           30 Sigal                      2800               3               3 
           40 Susan                      6500               1               1 
           50 TJ                         2100               1               1 
           50 Steven                     2200               2               2 
           50 Hazel                      2200               2               2 
           50 James                      2400               3               4 
           50 Ki                         2400               3               4 
           60 Diana                      4200               1               1 
           60 David                      4800               2               2 
           60 Valli                      4800               2               2 
           60 Bruce                      6000               3               4 
           70 Hermann                   10000               1               1 
           80 Sundita                 6725.25               1               1 
           80 Amit                     6835.5               2               2 
           80 Charles                  6835.5               2               2 
           80 Sundar                     7056               3               4 
           90 Neena                     17000               1               1 
           90 Lex                       17000               1               1 
           90 Steven                    24000               2               3 
          100 Luis                       6900               1               1 
          100 Ismael                     7700               2               2 
          100 Jose Manuel                7800               3               3 
          110 William                    8300               1               1 
          110 Shelley                   12008               2               2