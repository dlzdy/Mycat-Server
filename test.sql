2.2 mysql���ݿ�׼��

��¼������mysql��������Ҫ��database��table:

create database db1 default charset 'utf8';
create database db2 default charset 'utf8';
create database db3 default charset 'utf8';
1
2
3
1
2
3
�ֱ���db1��db2��db3�´���hotnews��:

create table hotnews (
    id int primary key,
    title varchar(100),
    author_id int,
    create_tm datetime,
    content text
) engine = innodb default character set = 'utf8';

drop table company if exists;
 create table company(id int not null primary key,name varchar(100));