create database exam_point_management;
use exam_point_management;
CREATE TABLE student (
    student_code VARCHAR(10) PRIMARY KEY,
    student_name VARCHAR(20),
    birthday DATE,
    class VARCHAR(10),
    gender VARCHAR(10)
);

CREATE TABLE `subject` (
    subject_code VARCHAR(10) PRIMARY KEY,
    subject_name VARCHAR(20)
);

CREATE TABLE socre_sheet (
    student_code VARCHAR(10),
    subject_code VARCHAR(10),
    score INT,
    `date` DATE,
    PRIMARY KEY (student_code , subject_code),
    FOREIGN KEY (student_code) REFERENCES student (student_code),
    FOREIGN KEY (subject_code) REFERENCES `subject`(subject_code)
);

CREATE TABLE teacher (
    teacher_code VARCHAR(10) PRIMARY KEY,
    teacher_name VARCHAR(20),
    phone_number VARCHAR(15)
);

ALTER TABLE `subject` ADD teacher_code VARCHAR(20);
ALTER TABLE `subject` ADD CONSTRAINT teacher_code FOREIGN KEY (teacher_code) REFERENCES teacher(teacher_code);

