<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Admin</title>
    <%@include file="/Componets/bootstrapcss.jsp" %>
    <style>
        .container {
            display: flex;
            justify-content: center; 
            margin: 40px;
        }
        
        .card {
            background-color: white;
            width: 190px;
            height: 292px;
            border-radius: 7px;
            margin: 39px;
            box-shadow: 4px 5px rgb(66, 60, 59);
        }
        
        .card:hover {
            box-shadow: 0 0 10px rgba(0, 0, 0, 1); 
        }
        
        .btn button {
            padding: 10px 20px;
            border-radius: 10px;
            background-color: rgb(49, 160, 194);
            border-style: none;
            font-size: 17px;
            margin: 20px;
            color: rgb(231, 229, 230);
            cursor: pointer;
        }
        
        .btn button:hover {
            background-color: rgba(61, 77, 224, 0.699);
            color: rgb(240, 243, 242);
        }
        
        .image {
            background-color: rgb(154, 196, 209);
            border-radius: 10px;
        }
        
        .btn a {
            text-decoration: none;
            color: white;
        }
        
        .login-btn, .manage-btn, .add-btn {
            text-align: center;
        }
        
        .login-btn button, .manage-btn button, .add-btn button {
            padding: 10px 20px;
            border-radius: 10px;
            background-color: rgb(49, 160, 194);
            border-style: none;
            font-size: 17px;
            margin: 5px;
            color: rgb(231, 229, 230);
            cursor: pointer;
        }
        
        .login-btn button:hover, .manage-btn button:hover, .add-btn button:hover {
            background-color: rgba(61, 77, 224, 0.699);
            color: rgb(240, 243, 242);
        }
    </style>
</head>
<body>
    <%@include file="/Componets/NavAdmin.jsp" %>
    
    <div class="container">
        <div class="card">
            <div class="image">
                <img src="/img/folder_1975643.png" alt="sp" width="180px" height="170px">
            </div>
            <div class="btn">
            <br>
                <form action="AddBooks.jsp" method="get" class="add-btn">
                    <button type="submit">Add Books</button>
                </form>
            </div> 
        </div>
        <div class="card">
            <div class="image">
                <img src="/img/product_11561429.png" alt="sp" width="180px" height="170px">
            </div>
            <div class="btn">
            <br>
                <form action="viewBook" method="get" class="manage-btn">
                    <button type="submit">Manage Books</button>
                </form>
            </div> 
        </div>
        <div class="card">
            <div class="image">
                <img src="/img/log-out_10024482.png" alt="sp" width="170px" height="170px">
            </div>
            <br><br>
            <form action="Login.jsp" method="get" class="login-btn">
                <button type="submit">Login</button>
            </form>
        </div>
    </div>
    <%@include file="/Componets/Footer.jsp" %>
</body>
</html>
