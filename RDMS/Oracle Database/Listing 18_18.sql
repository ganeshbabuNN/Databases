select stats_mw_test(section,strength, 'u_statistic') u_statistic, 		stats_mw_test(section,strength) p_value,
stats_mw_test(section,strength, 'statistic') statistic
from m_whitney1
/
