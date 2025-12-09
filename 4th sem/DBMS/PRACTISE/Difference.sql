-- Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.
-- The STATION table is described as follows:

--             STATION
--     Field          type
--     ID             number
--     CITY           VARCHAR(21)
--     STATE          VARCHAR(2)
--     LAT_N          NUMBER
--     LAT_W          NUMBER

-- where LAT_N is the northern latitude and LONG_W is the western longitude.

-- For example, if there are three records in the table with CITY values 'New York', 'New York', 'Bengalaru', there are 2 different city names: 'New York' and 'Bengalaru'. The query returns 1, 
-- because .total nubers of records - total number of distinct(unique) city names= 3-2= 1

-- query
SELECT 
(COUNT(CITY)- COUNT(DISTINCT CITY)) as difference
FROM STATION;
