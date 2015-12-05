
CREATE OR REPLACE TRIGGER [<Schema>.]<triggerName>
{BEFORE,AFTER}

{DELETE,INSERT,UPDATE[OF<column>,...]} -- Triggering statement

ON [<Schema>.]<tablename>
	[REFERENCING {OLD AS old, NEW AS new}]

	[FOR EACH ROW[ WHEN <condition>]] --- Trigger constraints

DECLARE
	<variable declarations>;
	<constant declarations>;
BEGIN				  --Trigger body
	<PL/SQL subprogram body>;
EXCEPTION
	<Exception PL/SQL Block>;
END;