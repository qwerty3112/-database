insert into City values (1, 'l');
insert all
    into City values (2, '2')
    into City values (3, '3')
    into City values (4, '4')
    into City values (5, '5')
select * from dual;

create or replace directory dir as 'D:\\Oracle\\lab4';
create table CityNew(
	id int,
	city varchar(50)
) 
organization external(
    type ORACLE_LOADER
    default directory dir
    access parameters(
        records delimited by newline
        fields terminated by ','
        missing field values are null
    )
    location ('load.txt')
); 
insert into City select * from CityNew;
drop table CityNew;
	
update City set city = 'new_name3' where id = 3;
update City set city = 'city' where id <= 2;

delete from City where id = 5;
delete from City where id > 2;
truncate table City;
