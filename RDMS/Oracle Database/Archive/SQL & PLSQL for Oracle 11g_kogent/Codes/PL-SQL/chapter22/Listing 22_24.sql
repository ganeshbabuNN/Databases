<<block1>> 
declare
      x integer;
      y integer;
begin    -- block 1
                		 	--identifiers available are x,y
       declare   			--start of block 2
             x char,
             z integer;
       begin
       				--identifiers available are 
       				--x,y,z (x as char)
       end;   			--end of block 2

       declare 			--start of block 3
             w real;
       begin
       				--identifiers available are x, y, w
              z : = 5
              			--this reference is illegal because z is 							--not declared in the block neither it is 							--declared in parent block
       end;  			--end of block 3
       				--identifiers available are x,y 
end;   				--end of block 1

