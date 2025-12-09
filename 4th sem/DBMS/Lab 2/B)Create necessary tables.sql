USE college_db;

CREATE TABLE subjects(
code INT ,
name VARCHAR(100),
 FOREIGN KEY (sem_id) REFERENCES Semester(sem_id),
cr_hr INT ,
is_compulsory BOOLEAN,
 FOREIGN KEY (course_id) REFERENCES courses(course_id)
);