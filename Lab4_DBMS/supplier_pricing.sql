use orders_db;


create Table if not exists supplier_pricing(
PRICING_ID	INT primary key not null auto_increment,
PRO_ID	INT,
SUPP_ID	INT,
SUPP_PRICE	INT DEFAULT 0,
foreign key (SUPP_ID) references supplier(SUPP_ID),
foreign key (PRO_ID) references product(PRO_ID));

insert into supplier_pricing values (1, 1, 2, 1500);
insert into supplier_pricing values (2, 3, 5, 30000);
insert into supplier_pricing values (3, 5, 1, 3000);
insert into supplier_pricing values (4, 2, 3, 2500);
insert into supplier_pricing values (5, 4, 1, 1000);
insert into supplier_pricing values (6, 12, 2, 780);
insert into supplier_pricing values (7, 12, 4, 789);
insert into supplier_pricing values (8, 3, 1, 31000);
insert into supplier_pricing values (9, 1, 5, 1450);
insert into supplier_pricing values (10, 4, 2, 999);
insert into supplier_pricing values (11, 7, 3, 549);
insert into supplier_pricing values (12, 7, 4, 529);
insert into supplier_pricing values (13, 6, 2, 105);
insert into supplier_pricing values (14, 6, 1, 99);
insert into supplier_pricing values (15, 2, 5, 2999);
insert into supplier_pricing values (16, 5, 2, 2999);




12:19:52	insert into supplier_pricing values (1, 1, 2, 1500)	Error Code: 1452. Cannot add or update a child row: a foreign key constraint fails (`orders_db`.`supplier_pricing`, CONSTRAINT `supplier_pricing_ibfk_1` FOREIGN KEY (`SUPP_ID`) REFERENCES `supplier` (`SUPP_ID`))	0.0019 sec

