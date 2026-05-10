-- Question 2 
-- How does spending compare to budget year by year? 

SELECT 
    b.fiscal_year,
    SUM(b.allocated_amount)                             AS total_budget,
    COALESCE(SUM(e.amount), 0)                          AS total_spent,
    SUM(b.allocated_amount) - COALESCE(SUM(e.amount),0) AS remaining,
    ROUND(
        (COALESCE(SUM(e.amount),0) / SUM(b.allocated_amount)) * 100
    , 2)                                                AS utilization_pct
FROM budget b
LEFT JOIN expenses e 
       ON b.department_id = e.department_id
      AND b.fiscal_year   = EXTRACT(YEAR FROM e.expense_date)
GROUP BY b.fiscal_year
ORDER BY b.fiscal_year;
