<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Gerenciador de Clientes</title>
</head>
<body>
	
	<div align="center">
		<h1>Gerenciador de Clientes</h1>
		<form method="get" action="search">
		
			<input type="text" name="keyword" />
			<input type="submit" value="Search" />
		
		</form>	
		<h3><a href="novo">Novo cliente</a></h3>
		<table border="1" padding="5">
			<tr>
				<th>ID</th>
				<th>Nome</th>
				<th>E-mail</th>
				<th>Endereço</th>
				<th>Ação</th>
			</tr>
			<c:forEach items="${listCliente}" var="cliente">
			<tr>
				<td>${cliente.id}</td>
				<td>${cliente.name}</td>
				<td>${cliente.email}</td>
				<td>${cliente.address}</td>
				<td>
					<a href="edit?id=${cliente.id}">Editar</a>
					&nbsp;&nbsp;&nbsp;
					<a href="delete?id=${cliente.id}">Deletar</a>
				</td>
			</tr>
			</c:forEach>
		</table>
		
	</div>
	
</body>
</html>