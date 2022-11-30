use orders_db;

create Table if not exists category 
(CAT_ID	INT Primary key not null auto_increment,
CAT_NAME	VARCHAR(20) NOT NULL);

insert into category values (1,'BOOKS');
insert into category values (2,'GAMES');
insert into category values (3,	'GROCERIES');
insert into category values (4,'ELECTRONICS');
insert into category values (5,'CLOTHES');