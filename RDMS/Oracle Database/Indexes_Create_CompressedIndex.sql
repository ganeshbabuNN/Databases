create index kcidx_first_name on employees(first_name) COMPRESS;

/*
this command compress duplicate occurrence of a key in the index leaf block.

*/