<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NavBar</title>
    <%@include file="/Componets/bootstrapcss.jsp" %>
    <style>
     * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        
        body {
            font-family: Arial, sans-serif;
            display: flex;
            flex-direction: column;
            min-height: 100vh; 
        }

        .container {
            text-align: left;
            padding-left: 10px;
        }

        .navbarcontent {
            background-color: #333;
            color: #fff;
            padding: 5px;
            display: flex;
            justify-content: space-between; 
            align-items: center;
        }

        .navbarcontent ul {
            list-style-type: none;
            display: flex;
            align-items: center;
            margin: 4px 10px -1px 10px;
        }

        .navbarcontent ul li {
            margin-right: 10px; 
        }
        .navbarcontent ul li a{
            text-decoration: none;
            color: white;
        }
        .navbarcontent ul li a:hover{
            color: #00BFFF;
        }
	
        .navbarcontent input[type="text"] {
            border-radius: 10px;
            padding: 5px;
            text-decoration: none;
            border: 1px solid transparent;
            transition: border-color 0.3s; 
        }

       
        .navbarcontent input[type="text"]:focus {
            outline: none; 
            border-color: #ccc; 
        }

        .navbarcontent button {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 5px 10px; 
            text-align: center;
            text-decoration: none;
            font-size: 16px;
            cursor: pointer;
            border-radius: 4px;
        }
        .login, .Signup {
            background-color: rgb(196, 48, 28);
            margin-left: 2px;
        }
     footer{
          background-color: #333;
          padding: 12px;
          color: white;
          align-items: center;
          display: flex;
          justify-content: right;
          margin-top: auto;
        }
        footer a{
          text-decoration: none;
          color: white;
        }

        .loginform {
            width: 343px;
            padding: 62px;
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 8); 
            margin: auto; 
            margin-top: 27px; 
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        label {
            font-weight: bold;
            margin-bottom: 5px;
            display: block;
        }

        input[type="email"],
        input[type="password"] {
            width: 100%;
            padding: 8px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        button[type="submit"] {
            background-color: #4caf50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
        }

        button[type="submit"]:hover {
            background-color: #45a049;
        }
       
    </style>
    
</head>
<body>
 <%@include file="/Componets/Navlogin.jsp" %>
<div class="container">
    <div class="loginform">
        <h2>Login</h2>
        <form action="Login" method="post">
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>
			<br><br>
            <button type="submit">Login</button><br><br>
            <a class="reg" href="Register.jsp">Sign Up ?</a>
        </form>
    </div>
</div>

<%@include file="/Componets/Footer.jsp" %>

</body>
</html>
  