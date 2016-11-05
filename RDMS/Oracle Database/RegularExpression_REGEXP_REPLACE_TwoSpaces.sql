---replace with two spaces with single space
with
   address as (select '20,  bangalore  ,PG road,  402932' l1 from dual
            union all
            select '422,  withfeild,  PG ardlod road,  234323' l1 from dual
            union all
            select '142,  kadugudi,  mess road,  23223' l1 from dual
            union all
            select '2342,hudi,  staronion , phoneix city,  5343434' l1 from dual)
select regexp_replace(address.l1,'  ','') trimmedURL from address;

/*
the first parameter hold two spaces, which indicates to search for two spaces.
the second parameter holds a single space,which will be used to replace two spaces
*/