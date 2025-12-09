SELECT 
    t.name AS teacher_name 
FROM 
    Teacher t
JOIN 
    Specialization sp ON t.t_id = sp.spe_id
WHERE 
    sp.name = 'Programming';
