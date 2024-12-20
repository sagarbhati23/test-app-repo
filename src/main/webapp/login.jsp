<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form validation</title>
    <link rel="stylesheet" href="./mystyle.css"/>
</head>
<body>
    <h1>Login Form</h1>
    <form name="regForm" onsubmit="return loginCheck()">
      

      <p>
        <label form="name">Email:</label>
        <input type="text" id="email" name="email" placeholder="Enter your Email"/>
        <span id="email-error" class="error-message"></span>    
      </p>


      <p>
        <label form="name">Password:</label>
        <input type="password" id="password" name="password" placeholder="Enter your Password"/>
        <span id="password-error" class="error-message"></span>    
      </p>
      <p>
        <input type="submit" value="submit" name="submit"/>
        <input type="reset" value="Reset" name="reset"/>
      </p>
     
    </form>

    <script src="./myscript.js"></script>
</body>
</html>


