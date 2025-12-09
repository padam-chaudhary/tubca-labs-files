-- Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.

-- Input Format

-- The STATION table is described as follows:

          --  STATION
-- -- -- --     Field          type
-- -- -- --     ID             number
-- -- -- --     CITY           VARCHAR(21)
-- -- -- --     STATE          VARCHAR(2)
-- -- -- --     LAT_N          NUMBER
-- -- -- --     LAT_W          NUMBER

-- where LAT_N is the northern latitude and LONG_W is the western longitude.

-- QUERY
SELECT DISTINCT CITY
FROM STATION
WHERE UPPER(LEFT(CITY,1)) NOT IN('A','E','I','O','U')
OR UPPER(RIGHT(CITY,1)) NOT IN('A','E','I','O','U');