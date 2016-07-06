cursor cl is
select batchcode, expectedincome 
from batch
for update nowait;
