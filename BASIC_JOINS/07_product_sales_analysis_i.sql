-- Select product_name, year, and price from the Sales and Product tables
SELECT
    p.product_name,  -- Name of the product from the Product table
    s.year,          -- Year of the sale from the Sales table
    s.price          -- Price of the product at the time of sale from the Sales table
FROM 
    Sales s          -- The main table containing sales information with an alias 's'
LEFT JOIN 
    Product p        -- Table containing product details with an alias 'p'
ON 
    p.product_id = s.product_id;  -- Join condition: match Product.product_id with Sales.product_id

