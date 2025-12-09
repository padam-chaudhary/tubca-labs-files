USE college_db;

ALTER TABLE students
ADD course_id int;
ALTER TABLE students
ADD FOREIGN KEY (course_id) REFERENCES courses(course_id);
