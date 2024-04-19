<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Cart</title>
    <%@include file="/Componets/bootstrapcss.jsp" %>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        .cart-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            padding: 10px;
        }
        .cart-item {
            border: 1px solid #ddd;
            border-radius: 5px;
            margin: 10px;
            width: 270px;
            background-color: #fff;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 8);
            overflow: hidden;
            position: relative;
        }
        .cart-item:hover {
            box-shadow: 0 4px 8px rgba(0, 0, 0, 8);
        }
        .item-image {
            width: 100%;
            height: 200px;
            border-bottom: 1px solid #ddd;
        }
        .item-details {
            padding: 15px;
        }
        .item-details h3 {
            margin-top: 0;
        }
        .item-details p {
            margin: 5px 0;
            font-size: 14px;
        }
        .item-actions {
            position: absolute; 
            bottom: 0; 
            width: 100%; 
            text-align: right; 
        }
        .remove-btn {
            background-color: #f44336;
            color: white;
            border: none;
            padding: 10px 10px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 18px;
            border-radius: 3px;
            cursor: pointer;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 8);
        }
        .remove-btn:hover {
            background-color: #d32f2f;
        }
        .place-order-btn {
            margin-top: 20px;
            text-align: center;
        }
        .place-order-btn button {
            background-color: #4CAF50; 
            border: none;
            color: white;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 5px;
        }
        .place-order-btn button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
<%@include file="/Componets/NavcartFetch.jsp" %>
<h2 style="text-align: center;">Your Cart<img alt="cart" src="img/shopping_10097745.png" width="40px" height="40px"></h2>
<div class="cart-container">
    <c:forEach var="item" items="${cartItems}">
        <div class="cart-item">
            <img class="item-image" src="${item.imageUrl}" alt="Item Image">
            <div class="item-details">
                <h3>${item.title}</h3>
                <p><strong>Author:</strong> ${item.author}</p>
                <p><strong>Price:</strong> ${item.price}</p>
            </div>
            <div class="item-actions">
                <form action="/del/${item.id}" method="post">
                    <button class="remove-btn" type="submit">Remove</button>
                </form>
            </div>
        </div>
    </c:forEach>
</div>
<div id="orderConfirmationModal" class="modal fade" role="dialog">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-body">
                <p>Your order has been placed successfully!</p>
            </div>
        </div>
    </div>
</div>
<script>
    function displayModalAndRedirect() {
        $('#orderConfirmationModal').modal('show');
        setTimeout(function() {
            window.location.href = "Home.jsp";
        }, 3000);
    }
</script>
<div class="place-order-btn">
    <button onclick="displayModalAndRedirect()">Place Your Order</button>
</div>
<!-- jQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Bootstrap JavaScript -->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<%@include file="/Componets/userviewbookfooter.jsp" %>
</body>
</html>
