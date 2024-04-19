<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Register</title>
    <%@include file="/Componets/bootstrapcss.jsp" %>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .registration-form {
            width: 400px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 8);
        }

        .registration-form h1 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }

        .registration-form label {
            font-weight: bold;
            margin-bottom: 5px;
            display: block;
        }

        .registration-form input[type="text"],
        .registration-form input[type="email"],
        .registration-form input[type="tel"],
        .registration-form input[type="password"] {
            width: calc(100% - 16px);
            padding: 8px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        .registration-form button[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .registration-form button[type="submit"]:hover {
            background-color: #0056b3;
        }

        .registration-form p {
            text-align: center;
            margin-top: 20px;
            color: #666;
        }

        .registration-form a {
            color: #007bff;
            text-decoration: none;
        }

        .registration-form a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <%@include file="/Componets/NavRegister.jsp" %>
    <form action="register" method="post" class="registration-form">
        <h1>Register</h1>
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required>

        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required>

        <label for="phone">Phone:</label>
        <input type="tel"  pattern="[0-9]{10}" id="phone" name="phone" required>

        <button type="submit">Register</button>
        <p>Already have an account? <a href="Login.jsp">Login</a></p>
    </form>
    
    <%@include file="/Componets/Footer.jsp" %>
</body>
</html>