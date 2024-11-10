# test-app-repo
Overview
This is a simple To-Do application built using Java and MySQL. It enables users to manage tasks by adding, updating, deleting, and viewing them. The project follows an MVC (Model-View-Controller) architecture and uses JDBC for database interactions.

Project Structure
Model: Contains the User class that defines the user entity.
DAO: Contains the UserDAO class responsible for database operations related to users.
Resources: Holds configuration files and other resources.

Requirements
Java 1.8 or higher
Maven
MySQL

Setup Instructions
Clone the Repository: Clone the project to your local machine.
Database Setup: Create the todoappdb database and the users table in MySQL
Update Credentials: Modify database connection details in UserDAO.java.
Build and Run: Use Maven to build and run the project.

How to Use
Insert a User: Add new users to the database
Select a User: Retrieve user information by ID.
Select All Users: List all users in the database.
Update a User: Modify existing user details.
Delete a User: Remove users from the database.
