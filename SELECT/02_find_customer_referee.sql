-- Select the 'name' column from the 'Customer' table
SELECT name
FROM Customer
-- Filter records where 'referee_id' is not equal to 2
-- The COALESCE function is used to handle NULL values by replacing them with 0
WHERE COALESCE(referee_id, 0) <> 2;

