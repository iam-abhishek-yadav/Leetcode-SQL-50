-- Select the 'name', 'population', and 'area' columns from the 'World' table
SELECT name, population, area
FROM World
WHERE (population >= 25000000)  -- Checks if the population is greater than or equal to 25,000,000
   OR (area >= 3000000);        -- Checks if the area is greater than or equal to 3,000,000 square kilometers

