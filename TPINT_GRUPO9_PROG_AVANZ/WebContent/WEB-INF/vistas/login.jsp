<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

</head>
<body>

	<h2 style="text-align: center">Login</h2>

<div class="container" style="margin-top: 50px;">
    <div class="row justify-content-center">
        <div class="col-md-4">
            <form:form action="formularioLogin.html" method="POST" style="text-align: center;">
                <div class="form-group">
                    <label for="username">Usuario:</label>
                    <input type="text" name="username" class="form-control" style="text-align: center;" />
                </div>
                <div class="form-group">
                    <label for="password">Contraseña:</label>
                    <input type="password" name="password" class="form-control" style="text-align: center;" />
                </div>
                <c:if test="${param.error!=null}">
                    <strong style="color: Red;">Usuario o Contraseña Incorrectos</strong>
                </c:if>
                <c:if test="${param.logout!=null}">
                    <strong style="color: Green; text-align: center;">Sesión cerrada con éxito</strong>
                </c:if>
                <br>
                <button type="submit" class="btn btn-primary">Login</button>
            </form:form>
        </div>
    </div>
</div>


<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

</body>
</html>