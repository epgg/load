
drop table if exists kegg2refgene;
create table kegg2refgene (
kegg char(100) not null primary key,
refgene char(100) not null
);
load data local infile 'kegg2refgene' into table kegg2refgene;

drop table if exists tair10Gene;
create table tair10Gene (
chrom varchar(20) not null,
start int unsigned not null,
stop int unsigned not null,
name varchar(100) not null
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
load data local infile 'tair10Gene_load' into table tair10Gene;
create index name on tair10Gene (name);

