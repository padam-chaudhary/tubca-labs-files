USE college_db;
-- insert 10 values into students table
INSERT INTO students(std_id,name,dob,batch) VALUES(NULL,"Sushant.k","2002-05-12",2079),
(NULL,"Sushant.s","2004-04-06",2079),
(NULL,"ram","2007-06-11",2079),
(NULL,"suhesh","2004-04-06",2079),(NULL,"padam","2003-10-12",2079),(NULL,"Sumit.R","2004-06-25",2079),
(NULL,"Niraj Tharu","2005-06-20",2079),(NULL,"Niruta Thapa","2004-03-25",2079),(NULL,"Namrata .G","2003-02-28",2079),
(NULL,"Mahesh .K","2004-01-24",2079);
-- inset 5 values  into course table
INSERT INTO courses(course_id,name,credit_hrs,university) VALUES(NULL,"BCA",126,"TU"),(NULL,"BBA",120,"PU"),
(NULL,"BBM",120,"TU"),(NULL,"csit",126,"TU"),(NULL,"BIM",120,"TU");



-- update course_id in student table as a fk
UPDATE students
SET course_id = CASE 
    WHEN std_id = 1 THEN (SELECT course_id FROM courses WHERE name = "BCA")
    WHEN std_id = 2 THEN (SELECT course_id FROM courses WHERE name = "BBM")
    WHEN std_id = 3 THEN (SELECT course_id FROM courses WHERE name = "BBA")
    WHEN std_id = 4 THEN (SELECT course_id FROM courses WHERE name = "csit")
    WHEN std_id = 5 THEN (SELECT course_id FROM courses WHERE name = "BBS")
    WHEN std_id = 6 THEN (SELECT course_id FROM courses WHERE name = "BBA")
    WHEN std_id = 7 THEN (SELECT course_id FROM courses WHERE name = "BCA")
    WHEN std_id = 8 THEN (SELECT course_id FROM courses WHERE name = "BBM")
    WHEN std_id = 9 THEN (SELECT course_id FROM courses WHERE name = "BCA")
    WHEN std_id = 10 THEN (SELECT course_id FROM courses WHERE name = "BBA")
    ELSE course_id
END
WHERE std_id IN (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
-- delete a  column of the table
ALTER TABLE courses
DROP COLUMN university;

-- deleting the multiple data of the  courses table
DELETE FROM courses
WHERE course_id IN(6,7,8,9,10,11,12,13,14,15) AND 
name IN("BCA","BBA","BBM","csit","BBS","BCA","BBA","BBM","csit","BBS") AND 
credit_hrs IN(126,120,120,126,120,126,120,120,126,120);

-- adding new column in the  courses table
ALTER TABLE courses
ADD COLUMN university VARCHAR(50);

-- add value in the university column of the courses table
UPDATE courses
SET university = CASE
    WHEN course_id = 1 THEN "TU"
    WHEN course_id = 2 THEN "PU"
    WHEN course_id = 3 THEN "TU"
	WHEN course_id = 4 THEN "PU"
	WHEN course_id = 5 THEN "TU"
    ELSE university  -- keeps the existing value if no condition is met
END
WHERE course_id IN (1, 2, 3, 4, 5);

             
-- delete course_id(fk) from student table
DESCRIBE students; -- show the structure

SHOW CREATE TABLE students; -- show the query



