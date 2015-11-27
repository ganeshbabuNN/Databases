select employee_id,first_name,
       to_char(hire_date,'DD-MM-YY') "Hire Date",
       to_char(hire_date,'MM') "Month"
from employees
order by to_char(hire_date,'MM');



/*

formats		Description
- / , . ; : 	Punctuation and quoted text is reproduced in the result.
"Text"
AD A.D		AD indicator with or without periods.
AM A.M		Meridian indicator with or without periods.
BC B.C		BC indicator with or without periods
D		Day of week (1-7).
DAY		Name of day.
DD		Day of month (1-31)
DDD		Day of year (1-366).
DL		Returns a value in the long date format, which is an extension of Oracle Database's DATE format, determined 		by the current value of the NLS_DATE_FORMAT parameter. Makes the appearance of the date components (day name, 		month number, and so forth) depend on the NLS_TERRITORY and NLS_LANGUAGE parameters. For example, in the 		AMERICAN_AMERICA locale, this is equivalent to specifying the format 'fmDay, Month dd, yyyy'. In the 		GERMAN_GERMANY locale, it is equivalent to specifying the format 'fmDay, dd. Month yyyy'.
DS		Returns a value in the short date format. Makes the appearance of the date components (day name, month 		number, and so forth) depend on the NLS_TERRITORY and NLS_LANGUAGE parameters. For example, in the 		AMERICAN_AMERICA locale, this is equivalent to specifying the format 'MM/DD/RRRR'. In the 		ENGLISH_UNITED_KINGDOM locale, it is equivalent to specifying the format 'DD/MM/RRRR'.
DY		Abbreviated name of day
E		Abbreviated era name (Japanese Imperial, ROC Official, and Thai Buddha calendars)
EE		Full era name (Japanese Imperial, ROC Official, and Thai Buddha calendars).
FF [1..9]	Fractional seconds; no radix character is printed. Use the X format element to add the radix character. Use 		the numbers 1 to 9 after FF to specify the number of digits in the fractional second portion of the datetime 		value returned. If you do not specify a digit, then Oracle Database uses the precision specified for the 		datetime datatype or the datatype's default precision. Valid in timestamp and interval formats, but not in 		DATE formats.
FM		Returns a value with no leading or trailing blanks.
FX		Requires exact matching between the character data and the format model
HH HH12		Hour of day (1-12).
HH24		Hour of day (0-23).
IW		Week of year (1-52 or 1-53) based on the ISO standard.
IYY IY I	Last 3, 2, or 1 digit(s) of ISO year
IYYY		4-digit year based on the ISO standard.
J		Julian day; the number of days since January 1, 4712 BC. Number specified with J must be integers.
MI		Minute (0-59).
MM		Month (01-12; January = 01).
MON		Abbreviated name of month
MONTH		Name of month
PM P.M.		Meridian indicator with or without periods
Q		Quarter of year (1, 2, 3, 4; January - March = 1).
RM		Roman numeral month (I-XII; January = I)
RR		Lets you store 20th century dates in the 21st century using only two digits.
RRRR		Round year. Accepts either 4-digit or 2-digit input. If 2-digit, provides the same return as RR. If you do 			not want this functionality, then enter the 4-digit year
SS		Second (0-59).
SSSSS		Seconds past midnight (0-86399).
TS		Returns a value in the short time format. Makes the appearance of the time components (hour, minutes, and so 		forth) depend on the NLS_TERRITORY and NLS_LANGUAGE initialization parameters.
TZD 		Daylight savings information. The TZD value is an abbreviated time zone string with daylight saving 		information. It must correspond with the region specified in TZR. Valid in timestamp and interval formats, 			but not in DATE format ex PST (for US/Pacific standard time); PDT (for US/Pacific daylight time).
TZH		Time zone hour. (See TZM format element.) Valid in timestamp and interval formats, but not in DATE formats.
		Examples: ''HH:MI:SS.FFTZH:TZM
TZM		Time zone minute. (See TZH format element.) Valid in timestamp and interval formats, but not in DATE formats
		'HH:MI:SS.FFTZH:TZM'
TZR		Time zone region information. The value must be one of the time zone regions supported in the database. Valid 		in timestamp and interval formats, but not in DATE formats. US/Pacific
WW		Week of year (1-53) where week 1 starts on the first day of the year and continues to the seventh day of the 		year
W		Week of month (1-5) where week 1 starts on the first day of the month and ends on the seventh
X		Local radix character 'HH:MI:SSXFF'
Y,YYY		Year with comma in this position.
YEAR SYEAR	Year, spelled out; S prefixes BC dates with a minus sign (-)
YYYY SYYYY 	4-digit year; S prefixes BC dates with a minus sign.
YYY  YY Y	Last 3, 2, or 1 digit(s) of year.
*/