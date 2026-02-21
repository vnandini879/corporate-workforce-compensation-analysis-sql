select a.*, b.*
from dept_manager a cross join departments b
where a.dept_no = b.dept_no
order by a.emp_no, b.dept_no ;

select a.*, b.*
from dept_manager a join departments b
on a.dept_no = b.dept_no
order by a .emp_no, b.dept_no;