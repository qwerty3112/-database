-- 
alter table Phone_Assistant drop constraint id_people;
   
alter table Phone_Assistant drop column address;
alter table Phone_Assistant modify phone varchar(14) not null;

alter table Phone_Assistant rename column phone to phone_number;

alter table Phone_Assistant add tmp int;
alter table Phone_Assistant add constraint uniquenew unique (phone_number, id);
    
alter table Phone_Assistant
    add constraint id_people foreign key (id_people) references People(id) on delete cascade;