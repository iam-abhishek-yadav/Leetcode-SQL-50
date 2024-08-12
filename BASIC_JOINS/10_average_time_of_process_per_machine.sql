-- Calculate the processing time for each machine
SELECT
    machine_id,  -- ID of the machine
    ROUND(
        AVG(
            CASE 
                WHEN activity_type = 'start' THEN -timestamp  -- Negate the timestamp for 'start' activities
                ELSE timestamp  -- Use the timestamp as is for other activities
            END
        )::decimal * 2  -- Convert average to decimal and multiply by 2 (assuming there are two rows per process_id)
        , 3  -- Round the result to 3 decimal places
    ) AS processing_time  -- Alias for the computed processing time
FROM
    Activity  -- Table containing activity records
GROUP BY
    machine_id  -- Group by machine_id to calculate processing time per machine
ORDER BY
    machine_id ASC;  -- Order the results by machine_id in ascending order

