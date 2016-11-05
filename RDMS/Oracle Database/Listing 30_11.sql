declare            				--block a
     x number(3);
     bcode batch.batchcode % type;
  begin
     bcode := 100010;
     begin           			--block b
             select expectedincome/nvl(netincome,0)
             into x
             from batch
             where batchcode = bcode;
     exception
     when zero_divide then
             x :=0;
     end;
     insert into batchanalysis(batchcode,value)
     values (bcode, x);
  end;
 /
