-- Table des étudiants
CREATE TABLE students (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    matricule TEXT UNIQUE NOT NULL,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    program TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Table des notes
CREATE TABLE grades (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    student_id INTEGER NOT NULL,
    course_code TEXT NOT NULL,
    grade REAL NOT NULL,
    semester TEXT NOT NULL,
    FOREIGN KEY (student_id) REFERENCES students(id)
);

-- Insertion de 5 étudiants avec leurs notes
-- Étudiant 1 (Informatique)
INSERT INTO students (matricule, first_name, last_name, program) 
VALUES ('ETD2023001', 'Jean', 'Dupont', 'Informatique');

INSERT INTO grades (student_id, course_code, grade, semester)
VALUES (1, 'MATH101', 16.5, 'Q1-2023'),
       (1, 'PROG101', 18.0, 'Q1-2023');

-- Étudiant 2 (Mathématiques)
INSERT INTO students (matricule, first_name, last_name, program)
VALUES ('ETD2023002', 'Marie', 'Martin', 'Mathématiques');

INSERT INTO grades (student_id, course_code, grade, semester)
VALUES (2, 'MATH101', 19.0, 'Q1-2023'),
       (2, 'STAT101', 17.5, 'Q1-2023');

-- Étudiant 3 (Physique)
INSERT INTO students (matricule, first_name, last_name, program)
VALUES ('ETD2023003', 'Pierre', 'Durand', 'Physique');

INSERT INTO grades (student_id, course_code, grade, semester)
VALUES (3, 'PHY101', 15.0, 'Q1-2023'),
       (3, 'MATH101', 14.5, 'Q1-2023');

-- Étudiant 4 (Chimie)
INSERT INTO students (matricule, first_name, last_name, program)
VALUES ('ETD2023004', 'Sophie', 'Leroy', 'Chimie');

INSERT INTO grades (student_id, course_code, grade, semester)
VALUES (4, 'CHM101', 16.0, 'Q1-2023'),
       (4, 'MATH101', 13.5, 'Q1-2023');

-- Étudiant 5 (Biologie)
INSERT INTO students (matricule, first_name, last_name, program)
VALUES ('ETD2023005', 'Thomas', 'Petit', 'Biologie');

INSERT INTO grades (student_id, course_code, grade, semester)
VALUES (5, 'BIO101', 18.5, 'Q1-2023'),
       (5, 'CHM101', 12.0, 'Q1-2023');











