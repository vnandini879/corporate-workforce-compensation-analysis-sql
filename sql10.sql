drop table if exists sales1;
create table sales1(
sales int,
month varchar(15));

insert into sales1
values (200,"Jan"),(300,"Feb");

drop table if exists sales2;
create table sales2(
sales int,
month varchar(15));

insert into sales2
values (300,"Feb"),(100,"Mar");

select * from sales1;

select * from sales2;

select sales1.*
from sales1
where month = "Jan"
union
select sales2.*
from sales2
where month = "Mar"
order by sales asc;

select "Sales1" as table_name, sales1.*
from sales1
union
select "Sales2" as table_names, sales2.*
from sales2;
