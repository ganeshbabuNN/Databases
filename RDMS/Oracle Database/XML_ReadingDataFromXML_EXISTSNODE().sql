--true
select 'customer is there ' as "Status" from customers
WHERE EXISTSNODE(
   customerXML,'/customers/customer[cname="Ganesh"]')=1;
   
--false
select 'customer is there ' as "Status" from customers
WHERE EXISTSNODE(
   customerXML,'/customers/customer[cname="kieomo"]')=1


--this EXISTSNODE() functions checks if an XML Element exists and if it does, return 1, otherwise 0.