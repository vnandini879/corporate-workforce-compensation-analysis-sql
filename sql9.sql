
create or replace view gender_avg_salary as
SELECT a.gender, avg(b.salary)
from employees a join salaries b
on a.emp_no = b.emp_no
where a.hire_date > "2000-01-01"
group by a.gender;

select * from gender_avg_salary;