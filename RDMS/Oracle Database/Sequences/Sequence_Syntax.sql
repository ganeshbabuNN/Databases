Sytnax
	CREATE SEQUENCE <SequenceName>
	[INCREMENT BY <integervalue>
	START WITH <IntegerValue>
	MAXVALUE <IntegerValue>/NOMAXVALUE
	MINVALUE <IntegerValue>/NOMINVALUE
	CYCLE/NOCYCLE
	CACHE<IntegerValue>/NOCACHE
	ORDER/NOORDER]

Parameter	usages and Description
INCREMENT BY	INCREMENT BY 1
		-Indicates the interval between sequence numbers.
		-this integer value:
		*Can be any positive or negative integer
		*Cannot be 0
		*Can have 28 or fewer digits
		-The absolute of this value must be less than the difference of MAXVALUE and MINVALUE.
		-if this value is negative, then sequence desends.
		-if the increment is positive, then the sequence ascends.
		-if ommits, the interval defaults to 1.
START WITH	-START WITH 1000
		-this clause is used to either
		*Start an ascending sequence at a value greater than its minimum.
		Or
		*start a descending sequences at a value less then its maximum.
		-This integer value.
		*Can have 28 or fewer digits
		*Defaults to the minimum value of the sequences for ascending sequences
		*Defaults to the maximum value of the sequences for descedning sequences.
MAXVALUE	-MAXVALUE 99999999
		-indicates the maximum value the sequences can generate.
		-this integer value.
		*Can have 28 or fewer digits
		*must be equal to or greater START WITH.
		AND
		*Must be greater than MINVALUE.
NOMAXVALUE	-NOMAXVALUE
		-Indicates a maximum value of 1 and 27 zeros for an ascending sequences or -1 for descending sequences
		-this is the default
MINVALUE	-MINVALUE=1
		-Indicates the minimum value of the sequences
		-this integer value
		*Can have 28 or fewer digits
		*Must be less or equal to START WITH
		*Must be less than MAXVALUE
NOMINVALUE	-NOMINVALUE
		-Indicates a minimum value of 1 for an ascending sequences or -1026 for a descending sequences
		-this is the default
CYCLE		-CYCLE
		-Indicates that the sequences continues to generate values after reaching either its maximum or minimum 		value.
		-After an ascending sequences reaches its maximum value, its generates its minimum value.
		-After a descending sequences reaches its minimum , its generates its maximum.
NOCYCLE		-NOCYCLE
		-indicates that the sequences cannot generate more values after reaching its maximum or minimum value
		-this is the default
CACHE		-CACHE 10
		-Indicates the number of sequences values that will be pre-allocated and kept in the memory for faster 		access
		-this integer value
		*Can have 28 or fewer digits
		*Must be less or equal to 2
		*Must be less than the number of values in the cycle for sequences that cycle. values beyond the cycle's 		capactity cannot be cached.
		-If a system failures occurs, all cached sequences values that have not been used in committed DML 		statements are lost. the potential number of lost values is equals to the value of CACHE parameters
NOCACHE		-NOCACHE
		-Indicates the values of the sequences are not pre-allocated
		-If both CACHE and NOCACHE are omitted, the default is to cache 20 sequence numbers
ORDER		-ORDER
		-Indicates that sequences number are generated in order of request
		-this parameter is useful if the sequences numbers are used as timestamps
		-Guaranteeing order is usually not important for sequences used to generate primary keys
		-ORDER is necessary only to guarantee ordered generation if oracle with RAC is in use
		-In an exclusive mode, sequences number are always generated in Order.
NOORDER		-NOORDER
		-Indicates no gurantee is required for the order of sequences number generated.
		-this is the defaults.