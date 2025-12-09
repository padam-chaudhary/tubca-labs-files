CREATE OR REPLACE VIEW CourseCreditSummary AS 
SELECT 
    c.name AS course_name, 
    SUM(s.cr_hr) AS total_credit_hours 
FROM 
    courses c
JOIN 
    subjects s ON c.course_id = s.course_id
GROUP BY 
    c.name;


-- Query to display results:
SELECT * FROM CourseCreditSummary;
