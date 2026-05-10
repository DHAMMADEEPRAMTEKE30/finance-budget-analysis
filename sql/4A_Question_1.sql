-- Question 1 
-- What is the total budget vs actual spending per department? 

SELECT 
    d.department_name,
    SUM(b.allocated_amount)         AS total_budget,
    COALESCE(SUM(e.amount), 0)      AS total_spent,
    SUM(b.allocated_amount) - COALESCE(SUM(e.amount), 0) AS remaining_budget,
    ROUND(
        (COALESCE(SUM(e.amount), 0) / SUM(b.allocated_amount)) * 100
    , 2)                            AS budget_utilization_pct
FROM departments d
JOIN budget b      ON d.department_id = b.department_id
LEFT JOIN expenses e ON d.department_id = e.department_id
GROUP BY d.department_name
ORDER BY budget_utilization_pct DESC;
