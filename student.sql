CREATE TABLE Student (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE Course (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE Student_Course (
    student_id INT NOT NULL,
    course_id INT NOT NULL,
    PRIMARY KEY (student_id, course_id),
    FOREIGN KEY (student_id) 
      REFERENCES Student(id)
      ON DELETE CASCADE,
    FOREIGN KEY (course_id) 
      REFERENCES Course(id)
      ON DELETE CASCADE
);

INSERT INTO Student (name) VALUES ('Mike');
INSERT INTO Student (name) VALUES ('Jack');
INSERT INTO Student (name) VALUES ('Henry');

INSERT INTO Course (name) VALUES ('Math');
INSERT INTO Course (name) VALUES ('Science');
INSERT INTO Course (name) VALUES ('History');

INSERT INTO Student_Course (student_id, course_id) VALUES (1, 1);
INSERT INTO Student_Course (student_id, course_id) VALUES (1, 2);
INSERT INTO Student_Course (student_id, course_id) VALUES (2, 2);
INSERT INTO Student_Course (student_id, course_id) VALUES (2, 3);
INSERT INTO Student_Course (student_id, course_id) VALUES (3, 1);
INSERT INTO Student_Course (student_id, course_id) VALUES (3, 2);
INSERT INTO Student_Course (student_id, course_id) VALUES (3, 3);


DELETE FROM `Course` WHERE id = 1
