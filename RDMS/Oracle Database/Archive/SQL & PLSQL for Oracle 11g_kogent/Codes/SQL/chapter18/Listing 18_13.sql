select
	stats_one_way_anova(area,zoneb, 'f_ratio') f_ratio,
	stats_one_way_anova(area,zoneb, 'sig') significance,
    	stats_one_way_anova(area,zoneb, 'mean_squares_between') msq_bet,
    	stats_one_way_anova(area,zoneb, 'mean_squares_within') msq_with,
    	stats_one_way_anova(area,zoneb, 'df_between') df_bet,
    	stats_one_way_anova(area,zoneb, 'df_within') df_with,
    	stats_one_way_anova(area,zoneb, 'sum_squares_between') sq_bet,
    	stats_one_way_anova(area,zoneb, 'sum_squares_within') sq_with
    	from sales_new
/
