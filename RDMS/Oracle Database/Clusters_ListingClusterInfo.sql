select cluster_name,tablespace_name,pct_free,key_size
,HASHKEYS,CACHE from user_clusters;

---creating the tab
select * from tab where tabtype='CLUSTER';

/*
Notice the CLUSTER_ID column value, for the tables jobs and employees. it holds a value 1
which indicates the these tables are in cluster whoe CLUSTER_ID is 1

*/