create index idx_noofchapter on bestbooks(noofchapters) REVERSE;

/*
-in this noofchapater is 23,323,32 in the index are reversed to 32,323,23,
-in this scenaroio, where data is being inserted in to the customers table concrurently,reather than having all wanting access to the block,this block begin hit are spread and hence the potentially expensive buffer busy waits are reduced.
*/