CREATE OR REPLACE VIEW StudentNamesAndBatches AS 
SELECT 
    std_id, 
    name AS student_name, 
    batch 
FROM 
    Students;

-- display the StudentNamesAndBatches
SELECT * FROM StudentNamesAndBatches;