ALTER SEQUENCE SQ_STUDENTNO
NOCACHE;

/*
-this disadvantages of creating a sequence with a chace is that if a system failures occurs, all cached sequence values that have not been used, are lost.
-This results in a gap in the assigned sequence values.
When the system comes backup,Oracle caches new numbers from where it left off in the sequence, 
ignoring the so called lost sequence values.
-NOCACHE means that non of the sequence values are stored in memory.
-this options reduces performance to some extent, however, it ensures that no gap occurs in the assigned sequences value in case of system failures
*/
