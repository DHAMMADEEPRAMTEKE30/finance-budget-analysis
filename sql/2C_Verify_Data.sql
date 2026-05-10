SELECT 'departments' AS table_name, COUNT(*) AS total_rows FROM departments
UNION ALL
SELECT 'employees',  COUNT(*) FROM employees
UNION ALL
SELECT 'budget',     COUNT(*) FROM budget
UNION ALL
SELECT 'expenses',   COUNT(*) FROM expenses;
