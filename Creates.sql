
CREATE TABLE students (
	id int NOT NULL IDENTITY(1,1) PRIMARY KEY,
	name VARCHAR(150) NOT NULL,
	address VARCHAR(100) NULL,
	email VARCHAR(75) NULL
);

CREATE TABLE classes (
	id int NOT NULL IDENTITY(1,1) PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	classroom int NULL
);

CREATE TABLE subjects (
	id int NOT NULL IDENTITY(1,1) PRIMARY KEY,
	classID int NOT NULL FOREIGN KEY REFERENCES classes(id),
	name VARCHAR(150) NOT NULL
);

CREATE TABLE studentClass (
	studentID int NOT NULL FOREIGN KEY REFERENCES students(id),
	classID int NOT NULL FOREIGN KEY REFERENCES classes(id),
	PRIMARY KEY (studentID, classID)
);

select * from students;
/* ROLLBACK
drop table students;
drop table studentClass;
drop table subjects;
drop table classes;
*/