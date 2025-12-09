USE college_db;

CREATE TABLE Courses(
course_id int  AUTO_INCREMENT,
   name VARCHAR(100) NOT NULL,
    credit_hrs int ,
    university VARCHAR(100),
    PRIMARY KEY(course_id)
);
