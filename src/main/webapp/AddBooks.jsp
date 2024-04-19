<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Add Books</title>
    <%@include file="/Componets/bootstrapcss.jsp" %>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 400px;
            margin: 25px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 8);
        }

        h1 {
            text-align: center;
            color: #333;
        }

        label {
            display: block;
            margin-bottom: 5px;
            color: #333;
        }

        input[type="text"],
        input[type="number"],
        input[type="file"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            font-size: 16px;
        }

        button[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #5ec726;
            color: #fff;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button[type="submit"]:hover {
            background-color: #3090b3;
        }
        h1{
        color: white;
        }
        h2{
        text-align: center;
        }
    </style>
</head>
<body>
<%@include file="/Componets/NavAdmin.jsp" %>
    <div class="container">
        
        <form action="addBook" method="post" enctype="multipart/form-data">
            <h2>Add Books <img alt="book" src="/img/book_2029020.png" width="40px" height="40px"> </h2>
            <label for="title">Title:</label>
            <input type="text" id="title" name="title" required><br>

            <label for="author">Author:</label>
            <input type="text" id="author" name="author" required><br>

            <label for="price">Price:</label>
            <input type="number" id="price" name="price" step="0.01" required><br>

            <label for="quantity">Quantity:</label>
            <input type="number" id="quantity" name="quantity" required><br>

             <label for="imageUrl">Image URL:</label>
			<input type="text" id="imageUrl" name="imageUrl" placeholder="Enter image URL" required><br>

			<label for="imageDesc">Description :</label>
			<input type="text" id="imageDesc" name="imageDesc" placeholder="Enter Description" required><br>

            <button type="submit">Add Book</button>
        </form>
    </div>
    <%@include file="/Componets/Footer.jsp" %>
</body>
</html>
