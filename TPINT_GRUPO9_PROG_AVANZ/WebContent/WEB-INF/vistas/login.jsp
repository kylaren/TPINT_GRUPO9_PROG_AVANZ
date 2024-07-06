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

	<h2 style="text-align: center">P�gina de login</h2>

	<form:form
		action="${pageContext.request.contextPath }/autenticacionUsuario"
		method="POST">


		<p>

			Usuario: <input type=text name="username" />

		</p>

		<p>

			Contrase�a: <input type=password name="password" />

		</p>

		<c:if test="${param.error!=null}">
		
			<strong style="color: Red;">Usuario o Contrase�a Incorrectos</strong>
			
		</c:if>

		<c:if test="${param.logout!=null}">
		
			<strong style="color: Red;">Sesi�n cerrada con exito</strong>
			
		</c:if>
		
		<br>
		<input type=submit value="Login" />
	</form:form>
</body>
</html>