create or replace procedure salary_raise (incr number)   is   type 		dept_array_type is table of number 
       index by binary_integer; 
           str varchar2(200); 
           dep_array dept_array_type; 
           eno1 number; 
      begin 
          select empno bulk collect into dep_array 
          from department where dept ='account'; 
       for i in dep_array.first..dep_array.last loop 
         eno1:=dep_array(i); 
          str :='update emp1  set salary = salary +:incr'||' ' 
          || ' where empno =:eno1'; 
          execute immediate str using incr,eno1; 

      end loop; 
   end; 
     /
