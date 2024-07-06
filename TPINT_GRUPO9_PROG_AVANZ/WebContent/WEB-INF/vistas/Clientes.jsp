<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Clientes</title>
<link rel="stylesheet"
	href="https://cdn.datatables.net/1.11.3/css/jquery.dataTables.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
	<div class="container mt-5">
		<h2 class="d-flex justify-content-between align-items-center"
			style="background-color: black; color: white; padding: 10px; font-size: 1.5em;">
			<span style="margin-left: 10px;">Clientes</span>
			
			<span style="color: white; margin-right:10px"> User: <security:authentication property="principal.username"/> </span>
			
			<form:form action="${pageContext.request.contextPath}/logout"
				method="POST">
				<input type="submit" class="btn btn-primary" value="Cerrar Sesión" />
			</form:form>
		</h2>

		<table id="clientesTable" class="display">
			<thead>
				<tr>
					<th>DNI</th>
					<th>Nombre</th>
					<th>Apellido</th>
					<th>Dirección</th>
					<th>Código Postal</th>
					<th>Provincia</th>
					<th>Nacionalidad</th>
					<th>Fecha de nacimiento</th>
					<th>Email</th>
					<th>Teléfono</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>12345678</td>
					<td>Carlos</td>
					<td>Luna</td>
					<td>Avenida 123</td>
					<td>1646</td>
					<td>Buenos Aires</td>
					<td>Argentina</td>
					<td>08/07/1989</td>
					<td>carlos@gmail.com</td>
					<td>1122233445</td>
				</tr>
				<tr>
					<td>87654321</td>
					<td>Ana</td>
					<td>Pérez</td>
					<td>Calle Falsa 456</td>
					<td>1234</td>
					<td>Córdoba</td>
					<td>Argentina</td>
					<td>15/03/1990</td>
					<td>ana@gmail.com</td>
					<td>1133445566</td>
				</tr>
			</tbody>
		</table>
	</div>

	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script
		src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
	<script>
		$(document).ready(function() {
			$('#clientesTable').DataTable();
		});
	</script>
</body>
</html>