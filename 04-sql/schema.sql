-- Cơ sở dữ liệu demo: quản lý lớp học (MySQL 8)
DROP DATABASE IF EXISTS hw1_school;
CREATE DATABASE hw1_school CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE hw1_school;

CREATE TABLE students (
    id        INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email     VARCHAR(100) NOT NULL UNIQUE,
    birth_year SMALLINT
);

CREATE TABLE courses (
    id      INT AUTO_INCREMENT PRIMARY KEY,
    title   VARCHAR(100) NOT NULL,
    credits TINYINT NOT NULL CHECK (credits BETWEEN 1 AND 6)
);

CREATE TABLE enrollments (
    student_id INT NOT NULL,
    course_id  INT NOT NULL,
    score      DECIMAL(4,2),
    PRIMARY KEY (student_id, course_id),
    FOREIGN KEY (student_id) REFERENCES students(id) ON DELETE CASCADE,
    FOREIGN KEY (course_id)  REFERENCES courses(id)  ON DELETE CASCADE
);
