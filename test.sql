2.2 mysql数据库准备

登录到本地mysql，创建需要的database和table:

create database db1 default charset 'utf8';
create database db2 default charset 'utf8';
create database db3 default charset 'utf8';
1
2
3
1
2
3
分别在db1、db2、db3下创建hotnews表:

create table hotnews (
    id int primary key,
    title varchar(100),
    author_id int,
    create_tm datetime,
    content text
) engine = innodb default character set = 'utf8';

drop table company if exists;
 create table company(id int not null primary key,name varchar(100));