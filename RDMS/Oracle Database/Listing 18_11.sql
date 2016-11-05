select corr_s(demand_rank,supply_rank, 'coefficient') coefficient,
corr_s(demand_rank,supply_rank, 'two_sided_sig') two_sided_p_value,
corr_s(demand_rank,supply_rank, 'one_sided_sig')   one_sided_p_value
from product1
/
