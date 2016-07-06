create function p1_sin1 (x float)
return float as external
library mathlib
name "c_sin"
language c;
/
