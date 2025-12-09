 use college_db;
SELECT 
    batch, 
    COUNT(*) AS total_students 
FROM 
    Students 
GROUP BY 
    batch;
