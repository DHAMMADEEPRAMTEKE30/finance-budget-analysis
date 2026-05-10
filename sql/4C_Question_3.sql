-- Question 3 
-- Which expense category costs the company the most? 

SELECT 
    category,
    COUNT(*)                    AS total_transactions,
    SUM(amount)                 AS total_spent,
    ROUND(AVG(amount), 2)       AS avg_per_transaction,
    ROUND(
        SUM(amount) * 100.0 / (SELECT SUM(amount) FROM expenses)
    , 2)                        AS percentage_of_total
FROM expenses
GROUP BY category
ORDER BY total_spent DESC;
