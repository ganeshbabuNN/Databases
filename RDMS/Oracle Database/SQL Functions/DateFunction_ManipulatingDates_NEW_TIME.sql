--NEW_TIME() returns the date after converting it from time zone1 to a date in time --zone2.
select new_time(to_date(sysdate,'dd-mon-yyyy Hh24:MI'),'AST','MST') "MST" from dual;

/*
value		description
AST		Atlantic standard time
BST		Bering standard time
CST		central standard time
EST		Eastern standard time
GMT		Greenwich mean time
HDT		Alaska-Hwaii Daylight time
MDT		Mountain Daylight Time
YST		Yukon Standard time

to Saylight

ADT		Altantic Daylight time
BDT		Bering daylight time
CDT		Central Daylight time
EDT		Eastern Daylight time
HST		Alaska-Hawali standard time
MST		Moutain standard time
NST		NewFoundland Standard time
PDT		Pacific Daylight time
YDT		Yukon Dayligh time.


*/