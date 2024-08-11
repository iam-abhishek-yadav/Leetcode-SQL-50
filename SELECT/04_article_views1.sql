-- Select 'viewer_id' as 'id' from the 'Views' table
SELECT viewer_id AS id
FROM Views
-- Filter records where 'author_id' is equal to 'viewer_id'
WHERE author_id = viewer_id
-- Group by 'viewer_id' and 'author_id' to aggregate results
GROUP BY viewer_id, author_id
-- Sort the results by 'viewer_id' in ascending order
ORDER BY viewer_id;

