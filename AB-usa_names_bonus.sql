-- Extra Questions
--For this first set of questions, you might find it useful to refer to the PostgreSQL string functions (https://www.postgresql.org/docs/current/functions-string.html).

-- 1. Find the longest name contained in this dataset. What do you notice about the long names?
SELECT name, char_length(name)
FROM names
GROUP BY name
ORDER BY char_length(name) DESC;
-- There are a number of names that have a character length of 15, but the data set seems to cut names off at that length
-- (i.e. "Michaelchristop" is probably actually "Michaelchristopher" - 18 characters instead of 15).
-- All the long length names are really just two typical names concatenated together into one longer name.

-- 2. How many names are palindromes (i.e. read the same backwards and forwards, such as Bob and Elle)?

-- 3. Find all names that contain no vowels (for this question, we'll count a,e,i,o,u, and y as vowels). (Hint: you might find this page helpful: https://www.postgresql.org/docs/current/functions-matching.html)

-- 4. How many double-letter names show up in the dataset? Double-letter means the same letter repeated back-to-back, like Matthew or Aaron. Are there any triple-letter names?

