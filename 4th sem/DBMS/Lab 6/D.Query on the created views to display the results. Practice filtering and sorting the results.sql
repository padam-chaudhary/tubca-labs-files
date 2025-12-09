-- Filter: Students from Batch 1 in StudentNamesAndBatches:
SELECT * 
FROM StudentNamesAndBatches 
WHERE batch = 2078;

-- Sort: Teachers in TeacherSubjects by Name:
SELECT * 
FROM TeacherSubjects 
ORDER BY teacher_name;

-- Filter and Sort: Courses with Total Credits > 6 in CourseCreditSummary:
SELECT * 
FROM CourseCreditSummary 
WHERE total_credit_hours > 6 
ORDER BY total_credit_hours DESC;
