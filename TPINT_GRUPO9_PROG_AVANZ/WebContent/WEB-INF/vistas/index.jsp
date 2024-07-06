<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
	<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pagina 1</title>
</head>
<body>

	<form action="redireccionar.html" method="get">
	
		<security:authorize access="hasRole('administrador')">
			<input type="submit" value="Clientes" name= "page">
		</security:authorize>
	
		<security:authorize access="hasRole('usuario')">
			<input type="submit" value="Prestamos" name= "page">
		</security:authorize>
		
	</form>


</body>
</html>