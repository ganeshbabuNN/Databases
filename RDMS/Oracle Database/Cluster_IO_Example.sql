Example
-------
-Consider the two tables called employees and Departments
-Most of the time, the data that is required is all department for a particular employee.
-In the normal scenario, Oracle performs an I/O to fetch the desired employee row from the employees table and then performs multiple I/Os to fetch each order for that customer from the departments table.

-The Following SQL query fetches all the departments for particular employee

select employee_id,first_name,last_name,department_name from employees,departments
where employees.department_id=departments.department_Id
and employees.first_name='Karen';

-If this customer has ten departments , each on different data block, even I/Os will be performed to return the query results, one I/O on the employee table and then I/O on the department table. as in fig1.0

-Oracle stores employee and departments as different physical data blocks as shown in the figure

-To improve the performance, create a indexed cluster name cli_empdept and add those both these tables to that cluster as in fig1.1
