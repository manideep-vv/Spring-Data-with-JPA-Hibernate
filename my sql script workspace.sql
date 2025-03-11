SELECT * FROM product;
SELECT * FROM student;
select * from id_gen;
select * from card;
select * from bankcheck;



use aims;
SELECT * FROM aims.person;
SELECT * FROM aims.person where name like "%n";
SELECT * FROM aims.person where salary=999;
SELECT * FROM aims.person order by country desc limit 3;
SELECT * FROM aims.person order by country desc , name asc ; 
select * from person where product = "Laptop" order by country desc , name desc ;
select * from aims.person where country="USA" order by salary desc;

select * from card ;
select * from bankcheck ;






