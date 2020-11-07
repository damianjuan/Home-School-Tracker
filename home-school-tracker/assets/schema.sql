DROP DATABASE IF EXISTS home_school_db;

CREATE DATABASE  home_school_db;

USE  home_school_db;

CREATE TABLE users (
    id INT PRIMARY KEY,
    user_name VARCHAR(30)
);

CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(30), 
    grade VARCHAR(10)
    );

CREATE TABLE subjects (
    id INT PRIMARY KEY,
    title VARCHAR(30)
);

CREATE TABLE activity (
    id INT PRIMARY KEY,
    activity_description VARCHAR(30),
    duration int
);