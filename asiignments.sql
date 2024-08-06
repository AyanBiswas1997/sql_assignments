use server;
create table delivery(
delivery_id int,
customer_id int,
order_date date,
customer_pref_delivery_date date,
primary key(delivery_id));
drop table delivery;
insert into delivery values(1,1,"2019-08-01","2019-08-02"),(2,5,"2019-08-02","2019-08-02"),(3,1,"2019-08-11","2019-08-11"),(4,3,"2019-08-24","2019-08-26"),(5,4,"2019-08-21","2019-08-22"),(6,2,"2019-08-11","2019-08-13");
select round((select count(*) from delivery where order_date = 
customer_pref_delivery_date)/count(*)*100,2) as immediate_percentage from 
delivery;
 



