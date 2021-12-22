drop table Contacts;
drop table Phone_Assistant;
drop table Company;
drop table City;
drop table People;

create table People(
    id int primary key,
    name varchar(50),
	surname varchar(50),
	fname varchar(50)
);

create table City(
    id int primary key,
    city varchar(50)
);

create table Company(
    id int primary key,
    name varchar(50)
);

create table Phone_Assistant(
    id int primary key,
	phone varchar(14),
    address varchar(100),
	
	id_people int,
	constraint id_people foreign key (id_people) references People(id),
	
	id_company int,
	constraint id_company foreign key (id_company) references Company(id),

	id_city int,
	constraint id_city foreign key (id_city) references City(id)
);

create table Contacts(
    id int primary key,
    phone_main int,
	constraint phone_main foreign key (phone_main) references Phone_Assistant(id),
	
	phone_have int,
	constraint phone_have foreign key (phone_have) references Phone_Assistant(id)
);