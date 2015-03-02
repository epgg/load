
drop table if exists kegg2refgene;
create table kegg2refgene (
kegg char(100) not null primary key,
refgene char(100) not null
);
load data local infile 'kegg2refgene' into table kegg2refgene;

drop table if exists refGene;
create table refGene (
chrom varchar(20) not null,
start int unsigned not null,
stop int unsigned not null,
name varchar(100) not null
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
load data local infile 'refGene_load' into table refGene;
create index name on refGene (name);

drop table if exists AGPv2_5a;
create table AGPv2_5a (
chrom varchar(20) not null,
start int unsigned not null,
stop int unsigned not null,
name varchar(100) not null
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
load data local infile 'AGPv2_5a_load' into table AGPv2_5a;
create index name on AGPv2_5a (name);

