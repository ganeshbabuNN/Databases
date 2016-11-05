select
	stats_f_test(area,zoneb, 'statistic') f_stat,
    	stats_f_test(area,zoneb, 'df_num') df_num,
    	stats_f_test(area,zoneb, 'df_den') df_den,
    	stats_f_test(area,zoneb, 'one_sided_sig') one_sig,
    	stats_f_test(area,zoneb, 'two_sided_sig') two_sig
    	from sales_new
    	/
