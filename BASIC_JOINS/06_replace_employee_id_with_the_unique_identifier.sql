-- Select unique_id and name from the employees table
SELECT 
    eu.unique_id,  -- Unique identifier from the EmployeeUNI table
    e.name         -- Name of the employee from the employees table
FROM 
    employees e    -- The main table containing employee details
LEFT JOIN 
    EmployeeUNI eu -- Secondary table containing unique identifiers
ON 
    eu.id = e.id;  -- Join condition: match EmployeeUNI.id with employees.id

