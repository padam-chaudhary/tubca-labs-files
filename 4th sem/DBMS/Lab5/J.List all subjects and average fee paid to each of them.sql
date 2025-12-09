SELECT 
    s.name AS subject_name, 
    AVG(bst.fee) AS average_fee 
FROM 
    subjects s
JOIN 
    BatchSubjectTeachers bst ON s.sub_code = bst.sub_code
GROUP BY 
    s.name;
