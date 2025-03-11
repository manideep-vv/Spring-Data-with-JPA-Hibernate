use mydb;

create table payment(
id int PRIMARY KEY,
pmode varchar(2),
amount decimal(8,3) ,
cardNumber varchar(20),
chequeNumber varchar(20)
);

select * from payment
