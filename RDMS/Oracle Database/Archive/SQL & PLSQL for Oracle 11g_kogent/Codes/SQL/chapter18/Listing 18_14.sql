select stats_crosstab
	( expected,observed, 'chisq_obs') chi_squared,
    	stats_crosstab
     	(expected,observed, 'chisq_sig') p_value,
    	stats_crosstab
    	(expected,observed,'phi_coefficient') phi_coefficient,
    	stats_crosstab
    	(expected,observed, 'chisq_df') degree_freedom,
    	stats_crosstab
    	(expected,observed,'cont_coefficient') cont_coefficient,
    	stats_crosstab
    	(expected,observed,'cramers_v') cramers_v
    	from rainfall
     /
