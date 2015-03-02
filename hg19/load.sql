
/*
drop table if exists kegg2refgene;
create table kegg2refgene (
kegg char(100) not null primary key,
refgene char(100) not null
);
load data local infile 'kegg2refgene' into table kegg2refgene;

drop table if exists gencodeV17;
create table gencodeV17 (   
chrom varchar(20) not null,
start int unsigned not null,
stop int unsigned not null,
name varchar(100) not null
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
load data local infile 'gencodeV17_load' into table gencodeV17;
create index name on gencodeV17 (name);
*/

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

