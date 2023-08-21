-- create development databases if not already existing
CREATE DATABASE dev_lnd;
CREATE DATABASE dev_src_img;
CREATE DATABASE dev_int;
CREATE DATABASE dev_accs;

show databases like '%dev%'

use database dev_src_img;

create schema my_schema
comment = 'This is a test schema';
show schemas;

drop table if exists my_table;
create table my_table(
id int autoincrement
,num number(20,3)
,name varchar(20)
,adress varchar(100)
,marks decimal(20,2)
);

desc table my_table;

select get_ddl('table', 'my_table');

insert into my_table(
num,name,adress,marks
)
values(20,'ankan datta', 'ramnagar 8', 70.02);

select * from my_table
