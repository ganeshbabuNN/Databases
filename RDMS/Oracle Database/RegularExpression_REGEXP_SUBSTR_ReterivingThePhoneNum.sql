--getting the phone no in the string for the fixe length

select regexp_substr('ganesh babu has phone of 99878-373829', '[0-9]{4}[-.][0-9]{6,6}') phoneno1,
       regexp_substr('banumadd has phone of 93823.239323', '[0-9]{4}[-.][0-9]{6,6}') phoneno2,
       regexp_substr('vehda has phone of 938232332.239323', '[0-9]{4}[-.][0-9]{6,6}') phoneno3
from dual;

/*
[0-9]-indicates any digit
{4}- repeats the previous element four times, this means it should be a four digit
[-.]-the four digits number can be followed by either -[hypen] OR [period].
[0-9]{6,6}-indicates a six digit number.{6,6} indicates that the maximum and minimum times the digit can repeat is 6

*/