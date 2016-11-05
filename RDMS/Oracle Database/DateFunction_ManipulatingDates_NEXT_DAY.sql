--NEXT_DAY() returns the date of the first weekday, named by character, that is after the date named by date. character must --be a day of the week

select NEXT_DAY('13-May-13','Monday') "next_day" FROM DUAL;