--normal way of extractins
select customers.cust_first_name ||' ' ||customers.cust_last_name "Customers",
       extract(month from order_date) "Month",
       sum(order_total) "Total_price"
from customers,orders
where customers.customer_id=orders.customer_id
group by cust_first_name,cust_last_name,
extract(month from order_date);

--to create a simple solutions create a view
CREATE VIEW vw_CustomerOrders
AS
select customers.cust_first_name ||' ' ||customers.cust_last_name "Customers",
       extract(month from order_date) "Month",
       sum(order_total) "Total_price"
from customers,orders
where customers.customer_id=orders.customer_id
group by cust_first_name,cust_last_name,
extract(month from order_date);

---now use the view instead of the entire query
select * from vw_customerorders;

--when view is queried to reterieve results oracle expands the simple query as
Select "Customers","Month", "Total_Price" FROM (
select customers.cust_first_name ||' ' ||customers.cust_last_name "Customers",
       extract(month from order_date) "Month",
       sum(order_total) "Total_Price"
from customers,orders
where customers.customer_id=orders.customer_id
group by cust_first_name,cust_last_name,
extract(month from order_date)
);

/*
-When a view is queries to retrieve results, oracle expands the simple querys
-Each column is query is given an alias. These column alias will become the actual column Nams for the view
-if an alias is not given, then the column name is the base tables column Name.
*/
