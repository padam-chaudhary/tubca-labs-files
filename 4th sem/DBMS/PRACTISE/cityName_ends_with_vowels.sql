
-- Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates

-- -- Input Format

-- -- The STATION table is described as follows:

-- -- --             STATION
-- -- --     Field          type
-- -- --     ID             number
-- -- --     CITY           VARCHAR(21)
-- -- --     STATE          VARCHAR(2)
-- -- --     LAT_N          NUMBER
-- -- --     LAT_W          NUMBER

-- where LAT_N is the northern latitude and LONG_W is the western longitude.

-- query Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION

SELECT DISTINCT CITY
FROM STATION
WHERE CITY LIKE '%A'
OR CITY LIKE '%E'
OR CITY LIKE '%I'
OR CITY LIKE '%O'
OR CITY LIKE '%U'
OR CITY LIKE '%a'
OR CITY LIKE '%e'
OR CITY LIKE '%i'
OR CITY LIKE '%o'
OR CITY LIKE '%u';