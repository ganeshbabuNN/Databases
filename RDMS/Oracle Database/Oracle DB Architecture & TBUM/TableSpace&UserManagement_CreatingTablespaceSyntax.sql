
Sytnax:
	CREATE [TEMPORARY] TABLESPACE DATAFILE/TEMPFILE
	  '<path and FileName>'[AUTOEXTEND [OFF/ON NEXT <integer>[K/M]
	MAXSIZE[<integer>[K/M]/UNLIMITED]]] [OFFLINE/ONLINE]

-the most common attributes of the CREATE TABLESPACE command are

Attribute Name		Description
--------------  	-----------
Tablespace		Name of the tablespace to be created
DATAFILE		Specifies the data file or files used to compose the tablespace
AUTOEXTEND		Enables or disables the automatic extension of the data files
			options		Descriptions
			OFF		Disables AUTOEXTEND if set to 'ON'. NEXT and MAXSIZE are set to zero. to re-enable 						the features after AUTOEXTEND is disabled, specify the values agains for NEXT and						MAXSIZE in additional ALTER TABLESPACE AUTOEXTEND commands.	
			ON 		Enables AUTOEXTENDED
			NEXT		Specifies disk space to allocate to the data file when more extends are required
			MAXSIZE		specifies the maximum disk space allowed for allocations to the data files.
			UNLIMITED	Allows the data file to have no limit on allocations of disk space
DEFAULT STORAGE		Specifies the default storage parameters for all objects created in the tablespace
ONLINE			Makes the tablespace available immediately after creations to users who have been granted access t 			the tablespace
OFFLINE			Makes the tablespace unavailable immdiately after creations.
-Once a tablespace is created, it must be Online to be useable. The CREATE TABLSPACE syntax, by default, ensures that the tablespace is made online. Only when the tablespace is online can users bound to the tablespace use it, for storing the objects.