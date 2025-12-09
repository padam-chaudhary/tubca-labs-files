USE college_db;


-- create semeter table
CREATE TABLE Semester(
sem_id INT AUTO_INCREMENT,
semester INT,
PRIMARY KEY(sem_id)
);

-- create subjects table
CREATE TABLE subjects(
sub_id INT AUTO_INCREMENT,
sub_code VARCHAR(50) UNIQUE ,
name VARCHAR(100),
cr_hr INT ,
is_compulsory BOOLEAN,
sem_id INT,
course_id INT,
 FOREIGN KEY (sem_id) REFERENCES Semester(sem_id),
 FOREIGN KEY (course_id) REFERENCES courses(course_id),
 PRIMARY KEY(sub_id)
);

-- create teacher table
CREATE TABLE Teacher(
t_id INT AUTO_INCREMENT,
name VARCHAR(100),
gender VARCHAR(20),
phone VARCHAR(20),
is_married BOOLEAN,
qualification VARCHAR(20),
PRIMARY KEY(t_id)
);


-- CREATE BATCH TABLE
CREATE TABLE Batch (
    batch_id INT AUTO_INCREMENT,
    batch_no INT,
    year INT, 
    PRIMARY KEY(batch_id)
);


-- create table BatchSubjectTeachers
CREATE TABLE BatchSubjectTeachers(
 batch_id INT,
sub_code  VARCHAR(50),
t_id INT,
fee VARCHAR(20),
 FOREIGN KEY (batch_id) REFERENCES Batch(batch_id),
    FOREIGN KEY (t_id) REFERENCES teacher(t_id),
    FOREIGN KEY (sub_code) REFERENCES subjects(sub_code)
    
);


-- create table specialization
CREATE TABLE Specialization(
spe_id INT AUTO_INCREMENT ,
name VARCHAR(50),
PRIMARY KEY(spe_id)
);


-- update  subject table 
-- ALTER TABLE subjects
-- RENAME COLUMN code TO sub_code;

-- update sub_code to primary or unique key
-- ALTER TABLE subjects
-- ADD UNIQUE(sub_code);

-- change data type of sub code of subjects table
-- ALTER TABLE subjects
-- MODIFY sub_code VARCHAR(50);

-- update university values
-- UPDATE  courses
-- SET university = "TU" 
-- WHERE course_id = 4;

-- update courses name of bbs
-- UPDATE   courses
-- SET name = "BIM" WHERE course_id = 5;

-- update size of data type in teacher table
-- ALTER TABLE  Teacher 
-- MODIFY qualification VARCHAR(50);

ALTER TABLE Batch
ADD COLUMN year INT;
UPDATE Batch
SET year = 2079; -- Set a default year for existing rows



