create or replace package batch_data as
      type batch_curtype is
      ref cursor return batch%rowtype;
      procedure open_batch( batchcur in out batch_curtype);
      cursor x is select * from batch;	--allowed
     						--y batch_curtype; not allowed
      function give_one_row return batch%rowtype;
      
end batch_data;
/
