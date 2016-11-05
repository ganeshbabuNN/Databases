create or replace package batch_data as
      type batch_curtype is
      ref cursor return batch%rowtype;
      procedure open_batch( batchcur in out batch_curtype);
end batch_data;
/
create or replace package body batch_data as
     
      procedure open_batch (batchcur in out batch_curtype) is
      begin
	open batchcur
	for select *
	         from batch;
      end open_batch;
end batch_data;
/ 
