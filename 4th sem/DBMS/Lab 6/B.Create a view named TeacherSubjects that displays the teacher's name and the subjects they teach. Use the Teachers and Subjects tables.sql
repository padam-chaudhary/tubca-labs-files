CREATE OR REPLACE VIEW TeacherSubjects AS 
SELECT 
    t.name AS teacher_name, 
    s.name AS subject_name 
FROM 
    Teacher t
JOIN 
    BatchSubjectTeachers bst ON t.t_id = bst.t_id
JOIN 
    subjects s ON bst.sub_code = s.sub_code;

-- Query to display results:
SELECT * FROM TeacherSubjects;