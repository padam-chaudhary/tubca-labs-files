SELECT 
    t.name AS teacher_name 
FROM 
    Teacher t
JOIN 
    BatchSubjectTeachers bst ON t.t_id = bst.t_id
JOIN 
    subjects s ON bst.sub_code = s.sub_code
WHERE 
    s.name = 'Java';
