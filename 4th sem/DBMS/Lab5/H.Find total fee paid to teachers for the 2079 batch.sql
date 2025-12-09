SELECT 
    SUM(fee) AS total_fee_paid 
FROM 
    BatchSubjectTeachers bst
JOIN 
    Batch b ON bst.batch_id = b.batch_no
WHERE 
    b.year = 2079;
