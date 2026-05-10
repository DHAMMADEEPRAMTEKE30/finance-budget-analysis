-- Question 6 
-- What is the average salary per department and how does headcount look? 

SELECT 
    d.department_name,
    COUNT(e.employee_id)            AS headcount,
    ROUND(AVG(e.salary), 2)         AS avg_salary,
    MIN(e.salary)                   AS min_salary,
    MAX(e.salary)                   AS max_salary,
    SUM(e.salary)                   AS total_salary_cost
FROM departments d
LEFT JOIN employees e ON d.department_id = e.department_id
GROUP BY d.department_name
ORDER BY avg_salary DESC;
