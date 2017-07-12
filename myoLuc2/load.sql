drop table if exists ensGene;
create table ensGene (
chrom varchar(20) not null,
start int unsigned not null,
stop int unsigned not null,
name varchar(100) not null
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
load data local infile 'ensGene_load' into table ensGene;
create index name on ensGene (name);




drop table if exists xenoRefGene;
create table xenoRefGene (
chrom varchar(20) not null,
start int unsigned not null,
stop int unsigned not null,
name varchar(100) not null
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
load data local infile 'xenoRefGene_load' into table xenoRefGene;
create index name on xenoRefGene (name);

