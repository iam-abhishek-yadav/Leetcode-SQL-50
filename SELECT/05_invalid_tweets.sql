-- Select 'tweet_id' from the 'Tweets' table
SELECT tweet_id
FROM Tweets
-- Filter records where the length of 'content' is greater than 15 characters
WHERE LENGTH(content) > 15;

