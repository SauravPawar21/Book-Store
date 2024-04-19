<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Manage Books</title>
    <%@include file="/Componets/bootstrapcss.jsp" %>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        h1, h2 {
            text-align: center;
            color: #333;
        }

        table {
            width: 80%;
            border-collapse: collapse;
            margin: 20px auto;
            border-radius: 10px;
            box-shadow: 6px 5px 20px 4px rgba(0, 0, 0, 0.8);
        }

        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #55b1a3;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #ddd;
        }

        button {
            background-color: #4199ab;
            color: white;
            border: none;
            border-radius: 4px;
            padding: 8px 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            text-decoration: none;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.7);
        }

        button:hover {
            background-color: #5ec726;
        }

        button a {
            text-decoration: none;
            color: white;
        }

        h1 {
            color: white;
        }

        table tr:first-child h2 {
            text-align: center;
            color: #333;
        }

       
        .add-books-btn {
            text-align: center;
            margin-bottom: 20px;
        }

        .add-books-btn button {
            width: auto; 
        }
    </style>
</head>
<body>
<%@include file="/Componets/NavAdmin.jsp" %>

<h2>Manage Books <img alt="mangesetting" src="/img/manual_1245285.png" width="45px" height="45px"> </h2> 

<div class="add-books-btn">
    <form action="AddBooks.jsp">
        <button type="submit">Add Books</button>
    </form>
</div>

<table>
    <tr>
        <th>Sr. No</th>
        <th><img src="img/Icon.png" alt="Book Img" width="30px" height="30px">    Img</th>
        <th>Title</th>
        <th>Author</th>
        <th>Price</th>
        <th>Quantity</th>
        <th>Delete</th>
        <th>Update</th>
    </tr>
    <c:forEach var="book" items="${bookList}">
        <tr>
            <td>${book.id}</td>
            <td><img src="${book.imageUrl}" alt="Book Image" width="100px" height="100px"></td>
            <td>${book.title}</td>
            <td>${book.author}</td>
            <td>${book.price}</td>
            <td>${book.quantity}</td>
            <td><button><a href="<c:url value='/delete/${book.id}'/>">Delete</a></button></td>
            <td><button><a href="${book.id}">Edit</a></button></td>
        </tr>
    </c:forEach>
</table>
<%@include file="/Componets/Footer.jsp" %>
</body>
</html>
