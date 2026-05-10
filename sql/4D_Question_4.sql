-- Question 4 
-- Which departments are OVER budget? (Budget vs Spending per year) 

SELECT 
    d.department_name,
    b.fiscal_year,
    b.allocated_amount              AS budget,
    COALESCE(SUM(e.amount), 0)      AS actual_spent,
    b.allocated_amount - COALESCE(SUM(e.amount), 0) AS variance,
    CASE 
        WHEN COALESCE(SUM(e.amount), 0) > b.allocated_amount 
        THEN '🔴 Over Budget'
        WHEN COALESCE(SUM(e.amount), 0) >= b.allocated_amount * 0.85 
        THEN '🟡 Near Budget'
        ELSE '🟢 Under Budget'
    END AS budget_status
FROM departments d
JOIN budget b ON d.department_id = b.department_id
LEFT JOIN expenses e 
       ON d.department_id = e.department_id
      AND b.fiscal_year   = EXTRACT(YEAR FROM e.expense_date)
GROUP BY d.department_name, b.fiscal_year, b.allocated_amount
ORDER BY b.fiscal_year, variance;
