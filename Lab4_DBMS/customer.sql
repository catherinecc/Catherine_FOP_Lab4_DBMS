use orders_db;

create Table customer(CUS_ID	INT Primary key not null auto_increment,
CUS_NAME	VARCHAR(20) NOT NULL,
CUS_PHONE	VARCHAR(10) NOT NULL,
CUS_CITY	VARCHAR(30) NOT NULL,
CUS_GENDER	CHAR);


insert into customer values (1,'AAKASH','9999999999',	'DELHI','M');
insert into customer values (2,'AMAN','9785463215','NOIDA','M');
insert into customer values (3,'NEHA','9999999999','MUMBAI','F');
insert into customer values (4,'MEGHA','9994562399','KOLKATA','F');
insert into customer values (5,'PULKIT','7895999999','LUCKNOW','M');
