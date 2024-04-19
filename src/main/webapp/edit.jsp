<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Edit Book</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        form {
            max-width: 600px; 
            margin: 50px auto;
            background: #ffffff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.8);
            display: flex; 
        }
        .book-image-container {
            flex: 1; 
            padding-right: 20px; 
            margin-top: 27px;
            border-radius: 5px;
        }
        .book-details {
            flex: 2; 
        }
        .book-image {
            max-width: 100%; 
            height: auto; 
            margin-bottom: 20px;
             border-radius: 5px;
        }
        label {
            display: block;
            margin-bottom: 10px;
        }
        input[type="text"], input[type="number"] {
            width: calc(100% - 12px);
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
            box-sizing: border-box;
        }
        input[type="submit"] {
            background: #5ec726; 
            color: #ffffff;
            border: none;
            padding: 10px 20px;
            border-radius: 3px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background: #4aae1c;
        }
    </style>
</head>
<body>
    <%@include file="/Componets/NavAdmin.jsp" %>
    <c:if test="${not empty book}">
        <form action="/edit/${book.id}" method="post">
            <div class="book-image-container">
                
                <img class="book-image" src="${book.imageUrl}" alt="Book Image">
            </div>
            <div class="book-details">
                <h2>Edit Book Details</h2>
                <label for="title">Title:</label>
                <input type="text" id="title" name="title" value="${book.title}">
                <br>
                <label for="author">Author:</label>
                <input type="text" id="author" name="author" value="${book.author}">
                <br>
                <label for="price">Price:</label>
                <input type="text" id="price" name="price" value="${book.price}">
                <br>
                <label for="quantity">Quantity:</label>
                <input type="text" id="quantity" name="quantity" value="${book.quantity}">
                <br>
                <input type="submit" value="Update">
            </div>
        </form>
    </c:if>
    <%@include file="/Componets/Footer.jsp" %>
</body>
</html>
