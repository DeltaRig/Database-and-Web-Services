INSERT INTO students (name, address, email)
VALUES ('Julia Maria', 'Romalino Est Valentin, 204', 'ju.maria@gmail.com');
INSERT INTO students (name, address, email)
VALUES ('Dee Arrigo', null, 'dee.arrigo@gmail.com');
INSERT INTO students (name, address, email)
VALUES ('Daniela Martins', 'Placio do Motin, 293 - Viamao', 'dani@gmail.com');
INSERT INTO students (name, address, email)
VALUES ('Gustavo Peixoto', 'Oliveiras, 3104', 'gu.peixoto@gmail.com');
INSERT INTO students (name, address, email)
VALUES ('Leticia Francisca', 'Palmeiras, 203', 'le.fransc@gmail.com');
INSERT INTO students (name, address, email)
VALUES ('Julia Silveira', 'Gonzaga, 2433', 'juju.silv@gmail.com');
INSERT INTO students (name, address, email)
VALUES ('Larissa Souza', 'Palmeiras, 401', 'lari@gmail.com');
INSERT INTO students (name, address, email)
VALUES ('Julia Springons', 'Gonzaga, 2403', 'juju.s@gmail.com');


INSERT INTO classes (name, classroom)
VALUES ('Commerce', 200);
INSERT INTO classes (name, classroom)
VALUES ('Humanities', 205);
INSERT INTO classes (name, classroom)
VALUES ('Language Arts', 300);
INSERT INTO classes (name, classroom)
VALUES ('Mathematics', 305);
INSERT INTO classes (name, classroom)
VALUES ('Science', 400);
INSERT INTO classes (name, classroom)
VALUES ('Foreign Languages', 405);
INSERT INTO classes (name, classroom)
VALUES ('Data Science', 500);

INSERT INTO subjects (classID, name)
VALUES (1, 'Accountancy');
INSERT INTO subjects (classID, name)
VALUES (1, 'Economics');
INSERT INTO subjects (classID, name)
VALUES (1, 'Statistics');
INSERT INTO subjects (classID, name)
VALUES (1, 'Business Studies');
INSERT INTO subjects (classID, name)
VALUES (2, 'History');
INSERT INTO subjects (classID, name)
VALUES (2, 'Sociology');
INSERT INTO subjects (classID, name)
VALUES (2, 'Geography');
INSERT INTO subjects (classID, name)
VALUES (2, 'Political Science');
INSERT INTO subjects (classID, name)
VALUES (3, 'Literature');
INSERT INTO subjects (classID, name)
VALUES (3, 'Speech');
INSERT INTO subjects (classID, name)
VALUES (3, 'Writing');
INSERT INTO subjects (classID, name)
VALUES (3, 'Composition');
INSERT INTO subjects (classID, name)
VALUES (4, 'Algebra I');
INSERT INTO subjects (classID, name)
VALUES (4, 'Algebra II');
INSERT INTO subjects (classID, name)
VALUES (4, 'Geometry');
INSERT INTO subjects (classID, name)
VALUES (4, 'Statistics');
INSERT INTO subjects (classID, name)
VALUES (4, 'Trigonometry');
INSERT INTO subjects (classID, name)
VALUES (5, 'Biology');
INSERT INTO subjects (classID, name)
VALUES (5, 'Chemistry');
INSERT INTO subjects (classID, name)
VALUES (5, 'Earth and Space Sciences');
INSERT INTO subjects (classID, name)
VALUES (5, 'Physics');
INSERT INTO subjects (classID, name)
VALUES (6, 'Franch');
INSERT INTO subjects (classID, name)
VALUES (6, 'Japanese');
INSERT INTO subjects (classID, name)
VALUES (6, 'English');
INSERT INTO subjects (classID, name)
VALUES (6, 'Spanish');
INSERT INTO subjects (classID, name)
VALUES (7, 'Bioinformatics');
INSERT INTO subjects (classID, name)
VALUES (7, 'Big Data');
INSERT INTO subjects (classID, name)
VALUES (7, 'Data Mining');
INSERT INTO subjects (classID, name)
VALUES (7, 'Data Analysis');

INSERT INTO studentClass (studentID, classID) VALUES (1, 1);
INSERT INTO studentClass (studentID, classID) VALUES (1, 3);
INSERT INTO studentClass (studentID, classID) VALUES (1, 6);
INSERT INTO studentClass (studentID, classID) VALUES (1, 7);
INSERT INTO studentClass (studentID, classID) VALUES (2, 2);
INSERT INTO studentClass (studentID, classID) VALUES (2, 4);
INSERT INTO studentClass (studentID, classID) VALUES (2, 5);
INSERT INTO studentClass (studentID, classID) VALUES (2, 7);
INSERT INTO studentClass (studentID, classID) VALUES (3, 1);
INSERT INTO studentClass (studentID, classID) VALUES (3, 4);
INSERT INTO studentClass (studentID, classID) VALUES (3, 6);
INSERT INTO studentClass (studentID, classID) VALUES (3, 7);
INSERT INTO studentClass (studentID, classID) VALUES (4, 1);
INSERT INTO studentClass (studentID, classID) VALUES (4, 3);
INSERT INTO studentClass (studentID, classID) VALUES (4, 6);
INSERT INTO studentClass (studentID, classID) VALUES (4, 7);
INSERT INTO studentClass (studentID, classID) VALUES (5, 4);
INSERT INTO studentClass (studentID, classID) VALUES (5, 5);
INSERT INTO studentClass (studentID, classID) VALUES (5, 6);
INSERT INTO studentClass (studentID, classID) VALUES (5, 7);
INSERT INTO studentClass (studentID, classID) VALUES (6, 1);
INSERT INTO studentClass (studentID, classID) VALUES (6, 2);
INSERT INTO studentClass (studentID, classID) VALUES (6, 3);
INSERT INTO studentClass (studentID, classID) VALUES (6, 4);
INSERT INTO studentClass (studentID, classID) VALUES (7, 1);
INSERT INTO studentClass (studentID, classID) VALUES (7, 2);
INSERT INTO studentClass (studentID, classID) VALUES (7, 5);
INSERT INTO studentClass (studentID, classID) VALUES (7, 7);
INSERT INTO studentClass (studentID, classID) VALUES (8, 1);
INSERT INTO studentClass (studentID, classID) VALUES (8, 2);
INSERT INTO studentClass (studentID, classID) VALUES (8, 3);
INSERT INTO studentClass (studentID, classID) VALUES (8, 6);
INSERT INTO studentClass (studentID, classID) VALUES (8, 7);


select * from students;
select * from classes;
select * from subjects;
select * from studentClass;