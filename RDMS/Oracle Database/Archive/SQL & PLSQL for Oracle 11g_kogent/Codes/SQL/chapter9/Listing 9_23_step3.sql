(select c2.city from customer c2, 
deposit d3  where c2.cname = d3.cname)minus
(select c1.city from customer c1 where c1.cname = 'ANIL');
