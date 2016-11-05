select stats_k-s_test(grade,score, 'statistic') ks_statistic,
stats_k-s_test(grade,score, 'sig') significance
from kol_s
/
