cursor cl is
select batch.batchcode,batch.expectedincome,
course.coursename From batch, course
where batch.coursecode = course.coursecode
for update of batchcode;
