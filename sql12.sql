select a.*, b.*
from dept_manager a cross join departments b
order by a.emp_no, b.dept_no;

select a.*, b.*
from dept_manager a, departments b
order by a.emp_no, b.dept_no;

CREATE TABLE year (
year int);

create table month (
month varchar(40));

insert into year 
value (2024),(2025);

insert into month
values ("Jan"),("Feb"),("Mar"),("Apr"),("May"),("Jun");

select * from month;

select a.*, b.*
from year a cross join month b
order by a.year;