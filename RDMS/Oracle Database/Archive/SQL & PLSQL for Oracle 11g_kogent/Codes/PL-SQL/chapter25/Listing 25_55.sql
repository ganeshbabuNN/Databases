update csample
set c1=cast(multiset(select arl,aim from tcomplex) as complextab) where sn=1
/
