<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Prestamos</title>
<link rel="stylesheet"
	href="https://cdn.datatables.net/1.11.3/css/jquery.dataTables.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
	<div class="container mt-5">
		<h2 class="d-flex justify-content-between align-items-center"
			style="background-color: black; color: white; padding: 10px; font-size: 1.5em;">
			<span style="margin-left: 10px;">Préstamos</span>
			
			<span style="color: white; margin-right:10px"> User: <security:authentication property="principal.username"/> </span>
			
			<form:form action="${pageContext.request.contextPath}/logout"
				method="POST">
				<input type="submit" class="btn btn-primary" value="Cerrar Sesión" />
			</form:form>
		</h2>

		<table id="PrestamosTable" class="display">
			<thead>
				<tr>
					<th>Nro Prestamo</th>
					<th>Fecha</th>
					<th>Dni Cliente</th>
					<th>Nombre y Apellido cliente</th>
					<th>Monto</th>
					<th>Total de cuotas</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>1</td>
					<td>05/07/2024</td>
					<td>12345678</td>
					<td>Carlos Luna</td>
					<td>5.350.000</td>
					<td>72</td>
				</tr>
				<tr>
					<td>2</td>
					<td>06/07/2024</td>
					<td>87654321</td>
					<td>Ana Pérez</td>
					<td>2.860.500</td>
					<td>48</td>
				</tr>
			</tbody>
		</table>
	</div>

	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script
		src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
	<script>
		$(document).ready(function() {
			$('#PrestamosTable').DataTable();
		});
	</script>
</body>
</html>