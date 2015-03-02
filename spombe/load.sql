
drop table if exists kegg2refgene;
create table kegg2refgene (
kegg char(100) not null primary key,
refgene char(100) not null
);
load data local infile 'kegg2refgene' into table kegg2refgene;



drop table if exists pombase_gene;
create table pombase_gene (
chrom varchar(20) not null,
start int unsigned not null,
stop int unsigned not null,
name varchar(100) not null
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
load data local infile 'pombase_gene_load' into table pombase_gene;
create index name on pombase_gene (name);



