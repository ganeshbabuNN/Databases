select
  EXTRACT(customerXML,'/customers//customer') "Name" --restrict here
from customers

--// is used to included all the customer details