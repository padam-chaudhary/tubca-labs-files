use college_db;
-- Step 1: Create the SubjectChangeLog Table (as you have already done)
CREATE TABLE SubjectChangeLog (
    id INT AUTO_INCREMENT PRIMARY KEY,
    sub_id INT,
    old_name VARCHAR(100),
    new_name VARCHAR(100),
    change_time DATETIME
);

-- Step 2: Create the Trigger LogSubjectChanges
DELIMITER $$

CREATE TRIGGER LogSubjectChanges
AFTER UPDATE ON Subjects
FOR EACH ROW
BEGIN
    IF OLD.name != NEW.name THEN
        INSERT INTO SubjectChangeLog (sub_id, old_name, new_name, change_time)
        VALUES (OLD.sub_id, OLD.name, NEW.name, NOW());
    END IF;
END$$

DELIMITER ;


-- Use the SHOW TRIGGERS Command
SHOW TRIGGERS;

-- drop trigger 
DROP TRIGGER IF EXISTS LogSubjectChanges;

-- View Specific Trigger Details
SELECT * 
FROM information_schema.TRIGGERS
WHERE TRIGGER_NAME = 'LogSubjectChanges';

SELECT * FROM SubjectChangeLog;
SHOW TRIGGERS LIKE 'Subjects';

INSERT INTO SubjectChangeLog (sub_id, old_name, new_name, change_time)
VALUES (1, 'Mathematics', 'Advanced Mathematics', NOW());





