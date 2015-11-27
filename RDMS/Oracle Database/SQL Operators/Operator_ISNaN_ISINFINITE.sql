select * from orders 
where orderamount is NAN     ----
or OrderAmount is infinite;  ---

   ORDERNO ORDERDATE CUSTOMERNO ORDERAMOUNT ORDERSTATUS          ORDERCODE          
---------- --------- ---------- ----------- -------------------- --------------------
         8 08-FEB-08         25 Infinity    Void                 MD/0203              
         7 09-DEC-08         25 NaN         Authorization Failed MD/0503    