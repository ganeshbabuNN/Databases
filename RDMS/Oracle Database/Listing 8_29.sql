SELECT COURSENAME,BATCHCODE,STARTINGDATE
FROM BATCH,COURSE
WHERE BATCH.COURSECODE = COURSE.COURSECODE
AND BATCH.BATCHCODE = 10001;
