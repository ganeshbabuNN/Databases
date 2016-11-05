select
  EXTRACT(customerXML,'/customers/customer/cid') "cid",--need to check
  EXTRACT(customerXML,'/customers/customer/cname') "Name", --element
  EXTRACT(customerXML,'/customers/customer/email') "email"
from customers