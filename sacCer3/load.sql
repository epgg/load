drop table if exists sgdGene;
create table sgdGene (
chrom varchar(20) not null,
start int unsigned not null,
stop int unsigned not null,
name varchar(100) not null
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
load data local infile 'sgdGene_load' into table sgdGene;
create index name on sgdGene (name);


drop table if exists xenoRefGene;
create table xenoRefGene (
chrom varchar(20) not null,
start int unsigned not null,
stop int unsigned not null,
name varchar(100) not null
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
load data local infile 'xenoRefGene_load' into table xenoRefGene;
create index name on xenoRefGene (name);

