use college_db;
-- export the teacher table values
SELECT * FROM Teacher
INTO OUTFILE 'D:\\DBMS\\Lab 7\\teachers_backup.csv'
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\n';


-- create a teacher1 table
CREATE TABLE Teachers1 (
    t_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    gender VARCHAR(20),
    phone VARCHAR(20),
    is_married TINYINT(1),
    qualification VARCHAR(50)
);

-- mport the CSV into a New Table (Teachers1)
LOAD DATA LOCAL INFILE 'D:\\DBMS\\Lab 7\\teachers_backup.csv'
INTO TABLE Teachers1
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\n'
(t_id, name, gender, phone, is_married, qualification);


-- Check the --secure-file-priv Directory
-- SHOW VARIABLES LIKE 'secure_file_priv';

-- SHOW VARIABLES LIKE 'config_file';

-- SHOW DATABASES;

-- create database collegedb_backup;

-- create table s_t_c like `batchsubjectteachers`;


