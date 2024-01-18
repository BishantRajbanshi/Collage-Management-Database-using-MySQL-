-- Create Database
CREATE DATABASE college_management;
USE college_management;

-- Students Table
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    date_of_birth DATE,
    email VARCHAR(100),
    phone_number VARCHAR(20)
);

-- Courses Table
CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    department VARCHAR(50),
    credits INT
);

-- Enrollment Table
CREATE TABLE enrollment (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    grade VARCHAR(2),
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

-- Example Data Insertion
-- Note: These values are randomly generated:
-- Insert students
INSERT INTO students VALUES (1, 'John', 'Doe', '1990-01-15', 'john.doe@email.com', '123-456-7890');
INSERT INTO students VALUES (2, 'Jane', 'Smith', '1992-05-20', 'jane.smith@email.com', '987-654-3210');

-- Insert courses
INSERT INTO courses VALUES (1, 'Introduction to Computer Science', 'Computer Science', 3);
INSERT INTO courses VALUES (2, 'Mathematics 101', 'Mathematics', 4);

-- Enroll students in courses
INSERT INTO enrollment VALUES (101, 1, 1, '2023-01-10', 'A');
INSERT INTO enrollment VALUES (102, 1, 2, '2023-01-15', 'B');
INSERT INTO enrollment VALUES (103, 2, 1, '2023-01-12', 'A-');
