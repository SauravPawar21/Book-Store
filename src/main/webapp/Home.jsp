<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <%@include file="/Componets/bootstrapcss.jsp" %>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        
        body {
            font-family: Arial, sans-serif;
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

        .carousel-container {
            margin-top: 0px;
            margin-bottom: 0px;
        }
        .carousel {
            height: 500px; 
        }

        footer{
          background-color: #333;
          padding: 1px;
          color: white;
          align-items: center;
          display: flex;
          justify-content: left;
        }
        footer a{
          text-decoration: none;
          margin-right: 20px;
          
        }
    </style>
</head>
<body>
    <%@include file="/Componets/NavBar.jsp" %>
     
    <div class="carousel-container">
        <div id="carouselExampleIndicators" class="carousel slide carousel-fade" data-ride="carousel">
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="https://source.unsplash.com/1400x558/?library" class="d-block w-100" alt="...">
                    <div class="carousel-caption d-none d-md-block">
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="https://source.unsplash.com/1400x558/?library,boy" class="d-block w-100" alt="...">
                    <div class="carousel-caption d-none d-md-block">
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="https://source.unsplash.com/1400x558/?Books" class="d-block w-100" alt="...">
                    <div class="carousel-caption d-none d-md-block">
                    </div>
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </div>

    <%@include file="/Componets/Footer.jsp" %>
   
</body>
</html>
