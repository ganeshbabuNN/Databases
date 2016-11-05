select s,n,x from dual
MODEL
Dimension by (1 x)
measures (50 s,0 n)
rules iterate (3)
      (s[1] =s[1]/2,
       n[1]=n[1]+1)

--the statement has 3 values in the result set: s,n and x
--the model uses DIMENSION BY (x) and it uses 's' in this statement requires a subscript.
--the MEASURES clauses defines two aliases that we will display in the result set s and n. Initial values for s and n are 50 and 0 respectively
--the RULES clause says we will ITERATE eactly 3 times.
-After first iterations , the value of s[1] becomes 50/2 or25
-After Second iterations , the value of s[1] becomes 25/2 or 12.5
-After Third iterations , the value of s[1] becomes 12.5/2 or 6.2
-And x is just a initial value i,e 32


--other example for displaying the initial value
select s,n,x from dual
MODEL
Dimension by (37 x)
measures (50 s,0 n)
rules iterate (3)
      (s[37] =s[37]/2,
       n[37]=n[37]+1)

UNTIL Clause
------------
-we can include  clause in our iterations to terminate the loop.
-we place a maximum value on iterations of 20. We decided to terminate the iterations when the vales of s[1]is less then or equal to 1.

select s,n,x from dual
MODEL
Dimension by (1 x)
measures (50 s,0 n)
rules iterate (20) UNTIL (s[1]<=1)
      (s[1] =s[1]/2,
       n[1]=n[1]+1);

Using PREDECESSOR
-----------------
-This time we used a maximum value of 80 for iterations .this will terminate the when there is a difference between  the previous value of s[1] and the new value of s[1] is less than or equal to 0.25
-Note that the iterations stopped when the difference between the previous value and new value was less than 0.25 (0.39-0.19=0.20).


select s,n,x from dual
MODEL
Dimension by (1 x)
measures (50 s,0 n)
rules iterate (80) UNTIL (previous (s[1])-s[1]<=0.25)
      (s[1] =s[1]/2,
       n[1]=n[1]+1);











