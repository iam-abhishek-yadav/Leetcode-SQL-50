-- Select IDs of weather records where the temperature is higher than the previous day
SELECT
    current_day.id  -- ID of the weather record for the current day
FROM
    Weather AS current_day  -- Table alias for the current day's weather records
WHERE
    EXISTS (
        -- Subquery to check if there is a previous day with a lower temperature
        SELECT 1
        FROM Weather AS yesterday  -- Table alias for the previous day's weather records
        WHERE
            current_day.temperature > yesterday.temperature  -- Current day's temperature is higher
            AND current_day.recordDate = yesterday.recordDate + INTERVAL '1 day'  -- Ensure the recordDate is exactly one day after the previous day
    );

