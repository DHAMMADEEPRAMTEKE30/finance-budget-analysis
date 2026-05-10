-- See all departments 
SELECT * FROM departments;

-- See all employees with their department names 
SELECT 
    e.employee_id,
    e.full_name,
    d.department_name,
    e.job_title,
    e.hire_date,
    e.salary
FROM employees e
JOIN departments d ON e.department_id = d.department_id
ORDER BY d.department_name;

-- See budget by department and year 
SELECT 
    d.department_name,
    b.fiscal_year,
    b.allocated_amount
FROM budget b
JOIN departments d ON b.department_id = d.department_id
ORDER BY b.fiscal_year, d.department_name;

--  See expenses with department names 
SELECT 
    e.expense_id,
    d.department_name,
    e.expense_date,
    e.category,
    e.amount,
    e.description
FROM expenses e
JOIN departments d ON e.department_id = d.department_id
ORDER BY e.expense_date;
