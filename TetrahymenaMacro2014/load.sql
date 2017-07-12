drop table if exists gene;
create table gene (
chrom varchar(20) not null,
start int unsigned not null,
stop int unsigned not null,
name varchar(100) not null
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
load data local infile 'geneLoad' into table gene;
create index name on gene (name);
