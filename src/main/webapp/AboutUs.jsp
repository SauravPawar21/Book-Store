<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us</title>
    <%@include file="/Componets/bootstrapcss.jsp" %>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            color: #333;
        }

        .container {
            padding: 20px;
            margin: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 8);
        }

        h1 {
            color: #333;
            margin-bottom: 20px;
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

        ul {
            list-style-type: none;
            padding: 0;
        }

        ul li {
            margin-bottom: 5px;
        }

        address {
            font-style: normal;
        }
        .container h3 a{
        text-decoration: none;
        color: #00BFFF;
        }
    </style>
</head>
<body>
    <div class="container">
    <h3><a href="Home.jsp">Home</a></h3>
        <h1>About Us</h1>
        
        <img src="/img/Icon.png" width="40px" height="40px" alt="Company Logo">

        <p>Welcome to our online bookstore! We are passionate about providing a wide selection of books to our customers, catering to all interests and age groups. Our goal is to make the joy of reading accessible to everyone, whether you're a bookworm or just starting your reading journey.</p>

        <p>At our bookstore, you'll find a diverse collection of books ranging from bestsellers to hidden gems, spanning various genres including fiction, non-fiction, mystery, romance, sci-fi, and more. We strive to create a welcoming and inclusive space where book lovers can explore, discover, and connect with their favorite authors and stories.</p>

        <p>Customer satisfaction is our top priority. We are committed to providing excellent service, fast shipping, and hassle-free returns to ensure that your shopping experience with us is enjoyable and stress-free.</p>

        <h2>Our Mission</h2>
        <p>Our mission is to promote literacy, foster a love of reading, and enrich lives through the power of books. We believe that reading has the ability to educate, inspire, and transform individuals, and we're dedicated to spreading the joy of reading to people everywhere.</p>

        <h2>Contact Us</h2>
        <p>If you have any questions, feedback, or inquiries, please don't hesitate to contact us:</p>
        <ul>
            <li>Email: <a href="mailto:contact@bookstore.com">contact@bookstore.com</a></li>
            <li>Phone: <a href="tel:+1234567890">+1234567890</a></li>
            <li>Address: 123 Bookstore Lane, City, State, ZIP Code, Country</li>
        </ul>
        
    </div>
    <%@include file="/Componets/Footer.jsp" %>
</body>
</html>
