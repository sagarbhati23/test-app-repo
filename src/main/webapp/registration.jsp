<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <link rel="stylesheet" href="style.css">
    <script src="validation.js" defer></script>
</head>
<body>
    <h1>Register</h1>
    <form id="registrationForm" method="post" action="registration.jsp">
        <p>
            <label for="email">Email:</label>
            <input type="text" id="email" name="email" placeholder="Enter your email" required>
            <span id="email-error" class="error-message"></span>
        </p>
        <p>
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" placeholder="Enter your password" required>
            <span id="password-error" class="error-message"></span>
        </p>
        <p>
            <label for="confirm-password">Confirm Password:</label>
            <input type="password" id="confirm-password" name="confirm-password" placeholder="Confirm your password" required>
            <span id="confirm-password-error" class="error-message"></span>
        </p>
        <p>
            <input type="submit" value="Register">
        </p>
    </form>
</body>
</html>
