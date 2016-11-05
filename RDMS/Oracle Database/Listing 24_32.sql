update batch
netincome = amt
where batchcode=bcode;
x := sql%notfound;
calcamt;
if x then
   ...............
