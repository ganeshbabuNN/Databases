select
  EXTRACT(customerXML,'/customers/customer[1]') "Name" --restrict here
from customers