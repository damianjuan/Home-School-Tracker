DROP DATABASE IF EXISTS home_school_db;

CREATE DATABASE  home_school_db;

USE  home_school_db;

CREATE TABLE parents (
    id INT PRIMARY KEY,
    user_name VARCHAR(30)
);

CREATE TABLE students (
    id INT PRIMARY KEY,
    full_name VARCHAR(30), 
    grade VARCHAR(10),
    parent_id INT,
    FOREIGN KEY (parent_id) REFERENCES parents(id)
    );

CREATE TABLE subjects (
    id INT PRIMARY KEY,
    title VARCHAR(30),
    student_id INT,
    parent_id INT,
    FOREIGN KEY (student_id) REFERENCES students(id),
    FOREIGN KEY (parent_id) REFERENCES parents(id)
);

CREATE TABLE activity (
    id INT PRIMARY KEY,
    activity_description VARCHAR(30),
    duration INT,
    subject_id INT,
    student_id INT,
    parent_id INT,
	FOREIGN KEY (subject_id) REFERENCES subjects(id),
    FOREIGN KEY (student_id) REFERENCES students(id),
    FOREIGN KEY (parent_id) REFERENCES parents(id)
    
);