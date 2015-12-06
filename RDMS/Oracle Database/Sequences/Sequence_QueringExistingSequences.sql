select sequence_name,last_number from user_sequences;


/*
column Name		Description
-----------		-----------
SEQUENCE_NAME		SEQUENECE name
MIN_VALUE		Minimum value of the sequence
MAX_VALUE		maximum value of the sequence
INCREMENT BY		value by which sequenceis incremented.
CYCLE_FLAG		value that indicates if the sequence will wrap on reaching the limit
ORDER_FLAG		value that indicates if the sequence numbers are generated in order
CACHE_SIZE		number of sequence number to cache
LAST_NUMBER		last sequence number written to disk

*/


select sequence_name,(last_number+increment_by) "nextvalue" from user_sequences;