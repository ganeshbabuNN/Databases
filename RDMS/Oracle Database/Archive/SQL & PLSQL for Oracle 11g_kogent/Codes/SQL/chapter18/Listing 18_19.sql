select stats_wsr_test(new_mac,old_mac, 'statistic') z_statistic,
stats_wsr_test(new_mac,old_mac, 'one_sided_sig') onesignificance,
stats_wsr_test(new_mac,old_mac, 'two_sided_sig') tosignificance
from machine
/
