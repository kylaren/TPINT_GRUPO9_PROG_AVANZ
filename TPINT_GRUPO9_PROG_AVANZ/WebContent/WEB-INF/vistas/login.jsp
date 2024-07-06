<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>

	<h2 style="text-align: center">Página de login</h2>

	<form:form
		action="${pageContext.request.contextPath }/autenticacionUsuario"
		method="POST">


		<p>

			Usuario: <input type=text name="username" />

		</p>

		<p>

			Contraseña: <input type=password name="password" />

		</p>

		<c:if test="${param.error!=null}">
		
			<strong style="color: Red;">Usuario o Contraseña Incorrectos</strong>
			
		</c:if>

		<c:if test="${param.logout!=null}">
		
			<strong style="color: Red;">Sesión cerrada con exito</strong>
			
		</c:if>
		
		<br>
		<input type=submit value="Login" />
	</form:form>
</body>
</html>