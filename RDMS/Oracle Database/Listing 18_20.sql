select avg(decode(y_or_n, 'y', 1, 0)) real_proportion,
stats_binomial_test
(y_or_n, 'y', 0.68, 'exact_prob') exact, stats_binomial_test
(y_or_n, 'y', 0.68, 'one_sided_prob_or_less') prob_or_less
from answer
/
