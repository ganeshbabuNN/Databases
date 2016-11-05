--declare
declare
   /*Declare the varaiable */
  employeeid number(10);
begin
null;
end;

-- declare and intialize
declare
 /*Declare the varaiable */
  employeeid number(10);
begin
 /*Declare the varaiable */
 employeeid := 101;
 
 /*print the message */
 dbms_output.put_line(employeeid);
end;
/ 

-- declare and intialize with NOT NULL constraints but not assigned it raise error
declare
 /*Declare the varaiable */
  employeeid number(10) NOT NULL := 101;
begin
   /*print the message */
 dbms_output.put_line(employeeid);
end;
/ 