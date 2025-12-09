-- Create Stored Procedure for Adding Students
DELIMITER $$

CREATE PROCEDURE AddNewStudent(
    IN p_std_id INT,
    IN p_name VARCHAR(100),
    IN p_dob DATE,
    IN p_batch INT
)
BEGIN
    INSERT INTO Students (std_id, name, dob, batch)
    VALUES (p_std_id, p_name, p_dob, p_batch);
END $$

DELIMITER ;





