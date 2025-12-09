USE college_db;

-- update batch in students table
UPDATE students 
SET batch = CASE
WHEN std_id = 1 THEN 2078
WHEN std_id = 3 THEN 2077
WHEN std_id = 5 THEN 2076
WHEN std_id = 7 THEN 2075
WHEN std_id = 9 THEN 2074
END
WHERE std_id IN(1 , 3, 5 , 7 , 9);