--MONTHS_BETWEEN() returns number of months between Date1 and Date2
---if date1 comes after date2, then MONTHS_BETWEEN returns a positive number.
select MONTHS_BETWEEN(Sysdate,'13-May-2013') "months" from dual;
--if Date1 comes before date2, then MONTHS_BETWEEN returns a negative number.
select MONTHS_BETWEEN('13-May-2013',Sysdate) "months" from dual;
--if Date1 and Date2 both fall on the last day of their respective months, then MONTHS_BETWEEN returns a whole number[no fractional components
select MONTHS_BETWEEN('13-May-2013','18-May-2013') "months" from dual;
/*if Date1 and Date2 are in diff months and at least one of the dates
is not a last day in the month, then MONTHS_BETWEEN --returns a fraction number.
the fractional component is calculated on a 31-day month basis 
and also takes into account any */
select MONTHS_BETWEEN('31-MAY-13','30-JUN-13') "months" from dual;
/*if Date1 and Date2 are in diff months and at least one of the dates is not a last day in the month, then MONTHS_BETWEEN 
returns a fraction number.the fractional component is calculated on a 31-day month baseis and also takes into account any 
difference in the time component of Date1 and Date2 */
select MONTHS_BETWEEN('13-May-2013','30-JUN-13') "months" from dual;