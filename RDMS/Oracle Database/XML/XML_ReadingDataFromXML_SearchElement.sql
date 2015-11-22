select
  EXTRACT(customerXML,'/customers/customer[cname="Ganesh"]') "Name" --search
from customers