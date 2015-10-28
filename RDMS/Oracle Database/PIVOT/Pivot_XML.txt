--The output comes back as CLOB so make sure the LONGSIZE is set to a large value before running the query. 
	set long 99999;


select * from (
   select times_purchased as "Purchase Frequency", state_code
   from customers t
)
                               
pivot xml
(
   count(state_code) as state_count        
   for state_code in (any)
)
order by 1

-the column STATE_CODE_XML is XMLTYPE, where the root element is <PivotSet>. Each value is represented as a name-value element pair. You can use the output in any XML parser to produce more useful output.

