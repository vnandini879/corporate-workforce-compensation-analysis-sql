SELECT 
    first_name, last_name
FROM
    employees
WHERE
    emp_no IN (SELECT 
            emp_no
        FROM
            dept_manager )
order by first_name;

SELECT 
    first_name, last_name
FROM
    employees
        JOIN
    dept_manager ON employees.emp_no = dept_manager.emp_no;

select A.* from
(SELECT 
    distinct emp_no
FROM
    salaries
WHERE
    salary < (SELECT 
            AVG(salary)
        FROM
            salaries)) as A ;