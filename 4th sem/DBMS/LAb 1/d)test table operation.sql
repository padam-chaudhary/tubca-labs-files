use college_db;

CREATE TABLE test(
testNo int AUTO_INCREMENT,
sub VARCHAR(50) NOT NULL,
score int NULL,
PRIMARY KEY(testNo)
);


-- remove column
ALTER TABLE test
DROP COLUMN score;