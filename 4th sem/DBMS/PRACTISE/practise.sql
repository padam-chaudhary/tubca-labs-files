SELECT COUNT(std_id)
FROM students;

SELECT credit_hrs
FROM courses
ORDER BY credit_hrs DESC
LIMIT 3;


SELECT batch,name, COUNT(std_id)
FROM students
GROUP BY batch,name;

SELECT name 
FROM students
WHERE batch = 2079
GROUP BY name
-- HAVING MAX(dob) > 2004-01-01
ORDER BY name DESC;




