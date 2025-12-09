SELECT 
    t_id, 
    COUNT(*) AS subject_count 
FROM 
    BatchSubjectTeachers 
GROUP BY 
    t_id 
ORDER BY 
    subject_count DESC 
LIMIT 1;
