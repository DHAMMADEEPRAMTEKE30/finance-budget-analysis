-- Question 5 
-- What is the monthly spending trend? 

SELECT 
    TO_CHAR(expense_date, 'YYYY-MM')    AS year_month,
    EXTRACT(YEAR FROM expense_date)     AS fiscal_year,
    TO_CHAR(expense_date, 'Month')      AS month_name,
    COUNT(*)                            AS transactions,
    SUM(amount)                         AS monthly_spent
FROM expenses
GROUP BY 
    TO_CHAR(expense_date, 'YYYY-MM'),
    EXTRACT(YEAR FROM expense_date),
    TO_CHAR(expense_date, 'Month')
ORDER BY year_month;
