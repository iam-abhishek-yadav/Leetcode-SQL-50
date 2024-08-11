-- Select the 'product_id' column from the 'Products' table
SELECT product_id  
FROM Products
-- Filter records where 'low_fats' is 'Y' and 'recyclable' is 'Y'
WHERE low_fats = 'Y'  -- Ensures that the product is low in fats
  AND recyclable = 'Y';  -- Ensures that the product is recyclable

