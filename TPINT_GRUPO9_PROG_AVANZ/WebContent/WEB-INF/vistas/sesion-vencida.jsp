<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
	<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f0f0f0;
        margin: 0;
        padding: 0;
    }

    .banner {
        background-color: #000;
        color: white;
        padding: 25px 20px;
        position: relative;
        width: 100%;
        top: 0;
        left: 0;
        display: flex;
        align-items: center;
        display: flex;
        flex-wrap: wrap;
    }
    .banner h1 {
    	width: 100%;
    }
    .banner a {
    	color: white;
    }

    .banner form {
        display: flex;
        align-items: center;
        background-color: #000; 
    }

    .banner input[type="submit"] {
        background-color: #000; 
        color: white;
        border: none;
        padding: 10px 20px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 25px;
        margin: 0 10px; 
        cursor: pointer;
        border-radius: 5px;
    }

    .banner input[type="submit"]:hover {
        background-color: #555; 
    }

    .container {
        display: flex;
        justify-content: center;
        align-items: center;
        height: calc(100vh - 60px);
        background-color: #f0f0f0;
    }

    form {
        background-color: #fff;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    
</style>
</head>
<body>
    <div class="banner">
	<h1>Sesión expirada, por favor vuelva a iniciar sesión</h1>
    <a href="${pageContext.request.contextPath}/">Volver al inicio</a>
	</div>

</body>
</html>