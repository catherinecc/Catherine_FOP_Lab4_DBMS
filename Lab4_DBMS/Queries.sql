-- 3)	Display the total number of customers based on gender who have placed orders of worth at least Rs.3000.
select c.CUS_GENDER, count(*)  from `order` o, customer c 
where o.CUS_ID =c.CUS_ID and o.ORD_AMOUNT >=3000 group by c.CUS_GENDER;


-- 4)	Display all the orders along with product name ordered by a customer having Customer_Id=2
select o.*, pr.PRO_NAME from customer c inner join `order` o 
on  c.CUS_ID =o.CUS_ID inner join supplier_pricing p on o.PRICING_ID = p.PRICING_ID 
inner join product pr on p.PRO_ID = pr.PRO_ID where c.CUS_ID = 2;
  

-- 5)	Display the Supplier details who can supply more than one product.
select s.* , count(distinct pr.PRO_ID) as `Number` from supplier s inner join supplier_pricing p on s.SUPP_ID = p.SUPP_ID 
inner join product pr on p.PRO_ID = pr.PRO_ID group by s.SUPP_ID having count(distinct pr.PRO_ID)>1 ;

-- 6)	Find the least expensive product from each category and print the table with 
-- category id, name, product name and price of the product


select p.cat_id as id , c.CAT_NAME as name,   p.pro_name as product_name, min_price as price from product p inner join (
select c.CAT_ID, min(p.Supp_price) as min_price from product pr 
inner join supplier_pricing p on pr.PRO_ID = p.PRO_ID 
inner join category c on c.CAT_ID = pr.CAT_ID group by c.CAT_ID )  category_price
on category_price.CAT_ID = p.CAT_ID inner join category c on c.CAT_ID = category_price.CAT_ID inner join supplier_pricing sp on sp.supp_price = category_price.min_price  ;


  

-- 7)	Display the Id and Name of the Product ordered after “2021-10-05”.
select p.pro_id, p.pro_name from product p inner join supplier_pricing sp on p.pro_id = sp.pro_id 
inner join `order` o on sp.pricing_id = o.pricing_id where o.ord_date >  '2021-10-05';

-- 8)	Display customer name and gender whose names start or end with character 'A'.
select cus_name as name , cus_gender as gender from customer where cus_name like 'A%' or cus_name like '%A';

-- 9)	Create a stored procedure to display supplier id, name, rating and Type_of_Service.
-- For Type_of_Service, If rating =5, print “Excellent Service”,If rating >4 print “Good Service”,
--  If rating >2 print “Average Service” else print “Poor Service”.

delimiter $$
CREATE PROCEDURE getSupplierRating()
BEGIN

select s.supp_id as id, s.supp_name as `name`, r.RAT_RATSTARS as rating,
case
when r.RAT_RATSTARS= 5 then 'Excellent Service'
when r.RAT_RATSTARS> 4 then  'Good Service'
when r.RAT_RATSTARS>2  then  'Average Service'
when r.RAT_RATSTARS<= 2 then  'Poor Service'
end as Type_of_Service
from supplier s inner join supplier_pricing sp on s.supp_id = sp.supp_id 
inner join `order` o on sp.pricing_id = o.pricing_id inner join rating r on o.ord_id = r.ord_id;
 

END $$

call getSupplierRating();




