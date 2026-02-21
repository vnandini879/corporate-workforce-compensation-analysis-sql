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
WHERE
    exists (SELECT 
            *
        FROM
            dept_manager where employees.emp_no = dept_manager.emp_no ) ;