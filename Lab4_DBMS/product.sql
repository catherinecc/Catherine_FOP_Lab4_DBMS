use orders_db;

create table if not exists product(
PRO_ID	INT Primary key not null auto_increment,
PRO_NAME	VARCHAR(20) NOT NULL DEFAULT 'Dummy',
PRO_DESC	VARCHAR(60),
CAT_ID	INT,
foreign key (CAT_ID)
references category(CAT_ID));

insert into Product values (1, 'GTA V', 'Windows 7 and above with i5 processor and 8GB RAM', '2');
insert into Product values (2, 'TSHIRT', 'SIZE-L with Black, Blue and White variations', '5');
insert into Product values (3, 'ROG LAPTOP', 'Windows 10 with 15inch screen, i7 processor, 1TB SSD', '4');
insert into Product values (4, 'OATS', 'Highly Nutritious from Nestle', '3');
insert into Product values (5, 'HARRY POTTER', 'Best Collection of all time by J.K Rowling', '1');
insert into Product values (6, 'MILK', '1L Toned MIlk', '3');
insert into Product values (7, 'Boat Earphones', '1.5Meter long Dolby Atmos', '4');
insert into Product values (8, 'Jeans', 'Stretchable Denim Jeans with various sizes and color', '5');
insert into Product values (9, 'Project IGI', 'compatible with windows 7 and above', '2');
insert into Product values (10, 'Hoodie', 'Black GUCCI for 13 yrs and above', '5');
insert into Product values (11, 'Rich Dad Poor Dad', 'Written by RObert Kiyosaki', '1');
insert into Product values (12, 'Train Your Brain', 'By Shireen Stephen', '1');
