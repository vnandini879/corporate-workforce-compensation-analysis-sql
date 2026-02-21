SELECT 
    e.first_name, e.last_name, dm.from_date, d.dept_name
FROM
    employees e
        left JOIN
    dept_manager dm ON e.emp_no = dm.emp_no
        left JOIN
    departments d ON dm.dept_no = d.dept_no
    order by dm.from_date desc;