create database Assignment1

use assignment1

create table salesman
(SalesmanId int, SalesmanName varchar(255), Commission decimal (10,2), City varchar(255), Age int)

select * from salesman

insert into salesman values(101,'Joe',50,'California',17),
(102, 'Simon', 75, 'Texas',25),
(103, 'Jessie',105, 'Florida',35),
(104, 'Danny', 100, 'Texas', 22),
(105, 'Lia', 65, 'New Jersey',30)

select * from salesman

create table customer
(SalesmanId int,customerId int , CustomerName varchar(255), PurchaseAmount int )

select * from customer 

insert into customer values(101,2345,'Andrew',550),
(103,1575,'Lucky', 4500),
(104,2345,'Andrew',4000),
(107,3747,'Remona',2700),
(110,4004,'Julia',4545)

select * from customer

create table orders
(OrderId int, CustomerId int, SalemanId int, OrderDate date, Amount int)

select * from orders

insert into orders values(5001,2345,101,'2021-07-04',550),
(5003,1234,105,'2022-02-25',1500)

select * from orders

insert into orders values(5004,2345,106,'2023-06-28',1600)

select * from orders

alter table salesman alter column salesmanid int not null

alter table salesman add constraint pr_key_id primary key(salesmanid)

alter table salesman add constraint def_c default 'texas' for city

/* Here we can apply the foreign key directly as we doesnot have same equal Ids in both table (salesman,customer)
so we have to insert values into salesman table*/

select * from salesman

insert into salesman values (107, 'Harry', 80, 'texas', 18)
insert into salesman values (110, 'Lilly', 85, 'Texas',  19

alter table customer add constraint for_key foreign key(salesmanId) references salesman(salesmanid)

alter table customer alter column customerName varchar (255) not null

select * from customer

select * from customer where customerName like '%n' and purchaseamount > 500

select salesmanid from salesman
union 
select salesmanid from customer 
order by salesmanid

select salesmanid from salesman
union all
select salesmanid from customer 
order by salesmanid

select o.orderdate,s.salesmanName,c.customername,s.commission,s.city from orders o 
inner join 
salesman s on o.salemanid = s.salesmanid
inner join 
customer c on o.customerid=c.customerid 
where c.purchaseamount between 500 and 1500

select s.salesmanid,s.salesmanName,s.city,s.commission,o.orderid,
o.customerid,o.orderdate, o.amount, o.salemanid from salesman s
right join
orders o
on 
s.salesmanid=o.salemanid

select * from salesman
select * from orders
select * from customer


/* completed succefully*/
