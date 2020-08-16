<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Resultado da pesquisa</title>
</head>
<body>
	
	<div align="center">
		<h1>Resultado da pesquisa</h1>

		<table border="1" padding="5">
			<tr>
				<th>ID</th>
				<th>Nome</th>
				<th>E-mail</th>
				<th>Endereço</th>
			</tr>
			<c:forEach items="${result}" var="cliente">
			<tr>
				<td>${cliente.id}</td>
				<td>${cliente.name}</td>
				<td>${cliente.email}</td>
				<td>${cliente.address}</td>
				
			</tr>
			</c:forEach>
			
			<h2><a href="/GerenciadorClientes">Voltar</a></h2>
			
		</table>
		
	</div>
	
</body>
</html>