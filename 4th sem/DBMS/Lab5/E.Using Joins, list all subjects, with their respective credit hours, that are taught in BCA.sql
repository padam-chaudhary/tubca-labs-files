SELECT 
    s.name AS subject_name, 
    s.cr_hr AS credit_hours 
FROM 
    subjects s
JOIN 
    courses c ON s.course_id = c.course_id
WHERE 
    c.name = 'BCA';
