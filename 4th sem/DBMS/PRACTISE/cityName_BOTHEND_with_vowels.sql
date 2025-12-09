-- Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.

-- Input Format

-- The STATION table is described as follows:

-- --             STATION
-- -- -- --     Field          type
-- -- -- --     ID             number
-- -- -- --     CITY           VARCHAR(21)
-- -- -- --     STATE          VARCHAR(2)
-- -- -- --     LAT_N          NUMBER
-- -- -- --     LAT_W          NUMBER

-- where LAT_N is the northern latitude and LONG_W is the western longitude.

-- query
SELECT DISTINCT CITY
FROM STATION
WHERE  UPPER(LEFT(CITY,1)) IN('A','E','I','O','U')
AND UPPER(RIGHT(CITY,1)) IN('A','E','I','O','U'); 