# test-app-repo

This is a simple To-Do application built using Java and MySQL. It enables users to manage tasks by adding, updating, deleting, and viewing them. The project follows an MVC (Model-View-Controller) architecture and uses JDBC for database interactions.

Project Structure
Model: Contains the User class that defines the user entity.
DAO: Contains the UserDAO class responsible for database operations related to users.
Resources: Holds configuration files and other resources.

Requirements
Java 1.8 or higher
Maven
MySQL

How to Use
Insert a User: Add new users to the database
Select a User: Retrieve user information by ID.
Select All Users: List all users in the database.
Update a User: Modify existing user details.
Delete a User: Remove users from the database.


## Features in Detail

### User Registration & Profile Management
- Users can register by providing their **name**, **email**, **country**, and **password**.
- After registration, users can view their profile details and edit them.

### Task Management
- Users can add, edit, view, and delete tasks.
- Tasks consist of **name**, **description**, **status**, and **due date**.

### **JSTL and EL Usage in JSP**
- **JSP pages** render dynamic content such as user details, task details, and task lists.
- **JSTL** is used in the JSP files to:
  - Iterate over lists of users and tasks using `<c:forEach>`.
  - Conditionally display content based on certain conditions.
  - Output user and task data dynamically using `<c:out>`.
- **EL (Expression Language)** is used to access and display the values of JavaBean properties directly in the JSP pages. For example, `${user.name}`, `${task.dueDate}` are rendered dynamically.

## How to Run the Project

### Prerequisites
- **Java** (JDK 11 or higher)
- **Apache Tomcat** (or any Java EE compatible server)
- **MySQL** or any other relational database for persistence
- **Maven** (optional, if you are using Maven for dependency management)

### Steps to Run the Project
1. **Clone the repository:**
   ```bash
   git clone https://github.com/yourusername/your-repository.git
   cd your-repository

### Notes:
- **Database Setup**: Ensure that you configure your database schema (tables for `users` and `tasks`) correctly by running the provided SQL schema queries.
- **Tomcat Setup**: You may need to configure **Tomcat** properly and make sure it's set up to handle Java web applications. You can download **Tomcat** from the [official website](http://tomcat.apache.org/).

