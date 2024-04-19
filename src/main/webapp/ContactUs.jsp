<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>
    	<%@include file="/Componets/bootstrapcss.jsp" %>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            color: #333;
        }

        div {
            padding: 20px;
            margin: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 5);
        }

        h1 {
            color: #333;
            margin-bottom: 20px;
        }

        h2 {
            color: #555;
            margin-top: 20px;
        }

        p {
            line-height: 1.6;
            margin-bottom: 15px;
        }
        img {
            max-width: 100%;
            height: auto;
            border-radius: 8px;
            margin-bottom: 20px;
        }

        a {
            color: #007bff;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }

        ul {
            list-style-type: none;
        
        }

        ul li {
            margin-bottom: 5px;
        }
		h3 a{
		text-decoration: none;
        color: #00BFFF;
		}
        
    </style>
</head>
<body>

    <div>
    <h3><a href="Home.jsp">Home</a></h3>
        <h1>Contact Us</h1>
        <img src="/img/Icon.png" width="40px" height="40px" alt="Company Logo">
        <p>If you have any questions, concerns, or feedback, please feel free to contact us:</p>
        
        <h2>Email</h2>
        <p>You can reach us via email at <a href="mailto:contact@bookstore.com">contact@bookstore.com</a></p>
        
        <h2>Phone</h2>
        <p>Give us a call at <a href="tel:+1234567890">+1234567890</a></p>
        
        <h2>Address</h2>
        <p>Visit us at:</p>
        <address>
            123 Bookstore Lane<br>
            City, State, ZIP Code<br>
            Country
        </address>
        
        <h2>Social Media</h2>
        <p>Connect with us on social media:</p>
        <ul>
            <li><a href="https://facebook.com/bookstore">Facebook</a></li>
            <li><a href="https://twitter.com/bookstore">Twitter</a></li>
            <li><a href="https://instagram.com/bookstore">Instagram</a></li>
        </ul>
        
    </div>
    <%@include file="/Componets/Footer.jsp" %>
</body>
</html>
