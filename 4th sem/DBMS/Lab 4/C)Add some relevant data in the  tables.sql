USE college_db;
-- insert into semester table
INSERT INTO Semester(sem_id, semester) 
VALUES(NULL, 1),(NULL, 2),
(NULL, 3),
(NULL, 4),
(NULL, 5),
(NULL, 6),
(NULL, 7),
(NULL, 8);

-- insert into subjects table
INSERT INTO subjects(sub_id,sub_code,name,cr_hr,is_compulsory,sem_id,course_id) 
VALUES(NULL,"CAS101","java",4,1,3,1),
(NULL,"CAS102","web technology",3,1,3,1),
(NULL,"CAS103","physics",3,1,1,4),
(NULL,"CAS104","Simulation and Modeling",3,1,5,4),
(NULL,"CAS105","Business Law",3,1,4,2),
(NULL,"CAS106","Business Statistics",3,1,1,2),
(NULL,"CAS107","Operating System",3,0,8,5),
(NULL,"CAS108","Human Resource Management",3,1,7,5),
(NULL,"CAS109"," Database Management",3,1,6,3),
(NULL,"CAS110"," Business Strategy",3,1,3,3);

-- insert values into teacher table 
INSERT INTO Teacher(t_id,name,gender,phone,is_married,qualification)
 VALUES(NULL,"Rajim Ali","Male","+977-9856492018",1,"MSc in Computer Science"),
 (NULL,"Bimal Acharya","Male","+977-9855602018",0,"Mit"),
 (NULL,"Mausam Khadka","Male","+977-9856490987",1,"PHD in Mathematics"),
 (NULL,"Mahima Shrestha","Female","+977-9812342018",0,"Master in Business Law "),
 (NULL,"Prabin Magar","male","+977-9812345678",0,"MSc in Cyber Security");
 
 -- insert data into specialization table
 INSERT INTO Specialization(spe_id,name) 
 VALUES(NULL,"Computer Science"),
 (NULL,"Computer Science"),
 (NULL,"Mathematics"),
 (NULL,"Business Administration"),
 (NULL,"Cyber Law");
 
 -- insert  data into Batch table
 INSERT INTO Batch (batch_no, year)
VALUES (1, 2079), (2, 2078),(3,2077),(4,2076),(5,2075),(6,2074),(7,2073),(8,2072);

 
 INSERT INTO BatchSubjectTeachers(batch_id, sub_code, t_id, fee) 
VALUES
    (1, "CAS101", 1, "2000"),  -- Teacher 1 teaches Java to Batch 1
    (2, "CAS102", 2, "2500"),  -- Teacher 2 teaches Web Technology to Batch 2
    (3, "CAS103", 3, "1800"),  -- Teacher 3 teaches Physics to Batch 3
    (4, "CAS104", 4, "2200"),  -- Teacher 4 teaches Simulation and Modeling to Batch 4
    (5, "CAS105", 5, "2400"),  -- Teacher 5 teaches Business Law to Batch 5
    (6, "CAS106", 1, "2100"),  -- Teacher 1 teaches Business Statistics to Batch 6
    (7, "CAS107", 2, "2300"),  -- Teacher 2 teaches Operating System to Batch 7
    (8, "CAS108", 3, "2600"),  -- Teacher 3 teaches Human Resource Management to Batch 8
    (1, "CAS109", 4, "2700"),  -- Teacher 4 teaches Database Management to Batch 1
    (2, "CAS110", 5, "2800");  -- Teacher 5 teaches Business Strategy to Batch 2
