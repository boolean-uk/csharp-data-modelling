CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255) UNIQUE
);

CREATE TABLE teachers (
    teacher_id INT PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255) UNIQUE
);

CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    name VARCHAR(255),
    teacher_id INT
);

CREATE TABLE enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enrollment_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE assignments (
    assignment_id INT PRIMARY KEY,
    course_id INT,
    title VARCHAR(255),
    content TEXT,
    deadline TIMESTAMP,
    posted_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE submissions (
    submission_id INT PRIMARY KEY,
    student_id INT,
    assignment_id INT,
    posted_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Feedback (
    feedback_id INT PRIMARY KEY,
    student_id INT,
    teacher_id INT,
    submission_id INT,
    mark INT,
    feedback TEXT,
    posted_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
