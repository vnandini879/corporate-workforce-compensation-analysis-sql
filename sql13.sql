/*Find emp id, name, salary of employees earning more than $500k*/
select a.emp_no, a.first_name, a.last_name, max(b.salary)
FROM employees a
join salaries b
on a.emp_no = b.emp_no
group by a.emp_no
having max(salary) > 150000
order by max(b.salary) desc;

select a.gender, avg(b.salary), max(salary)
from employees a
join salaries b
on a.emp_no = b.emp_no
group by a.gender;