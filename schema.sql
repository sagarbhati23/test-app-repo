-- Creating the database
CREATE DATABASE todoappdb;

-- using the database todoappdb
use todoappdb;

-- Creating the user table
CREATE TABLE todoapp.user1 (
    id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(20) NOT NULL,
    email VARCHAR(50) NOT NULL
);

-- Creating the tasks table
CREATE TABLE todoapp.tasks (
    task_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    title VARCHAR(100) NOT NULL,
    description TEXT,
    due_date DATE,
    completed BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (user_id) REFERENCES todoapp.user1(id)
);

-- Showing schema of user table
DESC todoapp.user1;

-- Showing schema of tasks table
DESC todoapp.tasks;