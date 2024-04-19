<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    
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
            padding: 3px;
            display: flex;
            justify-content: space-between; 
            align-items: center;
        }

        .navbarcontent ul {
            list-style-type: none;
            display: flex;
            align-items: center;
            margin: 0 10px;
        }

        .navbarcontent ul li {
            margin-right: 10px; 
        }

        .navbarcontent ul li a {
            text-decoration: none;
            color: white;
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
        
        footer {
            background-color: #333;
            padding: 12px;
            color: white;
            align-items: center;
            display: flex;
            justify-content: right;
            margin-top: auto; 
        }
        
        footer a {
            text-decoration: none;
            color: white;
        }
        
        a {
            text-decoration: none;
            color: white;
        }
        
    </style>
    
</head>
<body>
    <div class="navbarcontent">
        <ul>
            <li><img src="/img/Icon.png" alt="Icon" width="40px" height="40px"></li>
            <li><a href="Home.jsp">Home</a></li>
            <li><a href="AboutUs.jsp">About Us</a></li>
            <li><a href="ContactUs.jsp">Contact Us</a></li>
        </ul>
        <ul class="ul2">
            <h1><a href="AdminHome.jsp">Admin</a></h1>
        </ul>
    </div>
</body>
</html>
