create database if not exists wishlist;
create user phpadmin identified by "Linux4Ever";
grant all privileges on wishlist.* to 'phpadmin';
use wishlist;

create table if not exists wishers (id int auto_increment
primary key, name varchar(80));


create table if not exists wishes (id int auto_increment
primary key, wisher_id varchar(60), wish varchar(80), colour varchar(60), type varchar(60));

insert into wishers (name) values ('Ramy');
insert into wishers (name) values ('Tom');
insert into wishers (name) values ('Malin');
insert into wishers (name) values ('Tessan');


insert into wishes (wisher_id, wish, colour, type) 
values (1, 'Parrot', 'Gray', 'Blue jaco');
insert into wishes (wisher_id, wish, colour, type) 
values (1, 'Car', 'Red', 'Ferrari');
insert into wishes (wisher_id, wish)
values (1, 'Headset');

insert into wishes (wisher_id, wish, type) 
values (2, 'Videogame', 'Playstation 5');
insert into wishes (wisher_id, wish, colour) 
values (2, 'Ice skates', 'Black');
insert into wishes (wisher_id, wish) 
values (2, 'Telescope');

insert into wishes (wisher_id, wish, colour, type) 
values (3, 'Kitten', 'White', 'Female');
insert into wishes (wisher_id, wish, colour) 
values (3, 'Pants', 'Kakhi');
insert into wishes (wisher_id, wish, type) 
values (3, 'Candy', 'Fizzy Pops');

insert into wishes (wisher_id, wish, colour, type) 
values (4, 'MyLittlePony', 'Blue', 'Rainbow Dash');
insert into wishes (wisher_id, wish) 
values (4, 'Crayons');
insert into wishes (wisher_id, wish, colour) 
values (4, 'Bicykle', 'Pink');                                                                                     
