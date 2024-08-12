-- Count the number of visits per customer where no transactions occurred
SELECT
    v.customer_id,               -- ID of the customer from the Visits table
    COUNT(v.customer_id) AS count_no_trans  -- Count of visits per customer with no associated transactions
FROM
    Visits v                     -- Table containing visit details with an alias 'v'
LEFT JOIN
    Transactions t               -- Table containing transaction details with an alias 't'
ON
    v.visit_id = t.visit_id      -- Join condition: match Visits.visit_id with Transactions.visit_id
WHERE
    t.visit_id IS NULL           -- Filter to include only those visits that have no corresponding transactions
GROUP BY
    v.customer_id;               -- Group results by customer_id to get the count of visits per customer

