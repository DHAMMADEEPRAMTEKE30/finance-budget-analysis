-- Any NULL (missing) values in employees? 
SELECT *
FROM employees
WHERE full_name   IS NULL
   OR department_id IS NULL
   OR salary        IS NULL
   OR hire_date     IS NULL;

-- Any NULL values in expenses? 
SELECT *
FROM expenses
WHERE department_id IS NULL
   OR amount         IS NULL
   OR expense_date   IS NULL;

-- Any duplicate expenses? 
SELECT 
    department_id,
    expense_date,
    amount,
    description,
    COUNT(*) AS occurrences
FROM expenses
GROUP BY department_id, expense_date, amount, description
HAVING COUNT(*) > 1;

-- Salary sanity check (any unusual salaries?)
SELECT 
    full_name,
    job_title,
    salary
FROM employees
ORDER BY salary DESC;

-- Expense amount sanity check 
SELECT 
    MIN(amount)  AS lowest_expense,
    MAX(amount)  AS highest_expense,
    ROUND(AVG(amount), 2) AS average_expense
FROM expenses;

-- What years does our expense data cover?
SELECT 
    EXTRACT(YEAR FROM expense_date) AS fiscal_year,
    COUNT(*)                        AS total_transactions,
    SUM(amount)                     AS total_spent
FROM expenses
GROUP BY fiscal_year
ORDER BY fiscal_year;
