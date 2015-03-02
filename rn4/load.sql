drop table if exists refGene;
create table refGene (
chrom varchar(20) not null,
start int unsigned not null,
stop int unsigned not null,
name varchar(100) not null
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
load data local infile 'refGene_load' into table refGene;
create index name on refGene (name);

drop table if exists xenoRefGene;
create table xenoRefGene (
chrom varchar(20) not null,
start int unsigned not null,
stop int unsigned not null,
name varchar(100) not null
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
load data local infile 'xenoRefGene_load' into table xenoRefGene;
create index name on xenoRefGene (name);

