# 17
create table product(product_id int not null,
product_name varchar(20),unit_price int,
primary key(product_id));
create table sales(seller_id int,product_id int,
Buyer_id int,sale_date date,quantity int,price int,
foreign key(product_id) references product(product_id));
drop table sales;
insert into product values(1,"s8",1000),(2,"G4",800),(3,"iphone",1400);
insert into sales values(1,1,1,"2019-01-21",2,2000),(1,2,2," 2019-02-17",1,800),(2,2,3,"2019-06-02",1,800),(3,3,4,"2019-05-13",2,2800);
(select p.product_id,p.product_name from product p inner join sales  s on p.product_id=s.product_id
where s.sale_date>="2019-01-01" and s.sale_date<"2019-03-31")
Except
(select p.product_id,p.product_name from product  p inner join sales s on p.product_id=s.product_id
where s.sale_date<"2019-01-01" or s.sale_date>"2019-03-31");


