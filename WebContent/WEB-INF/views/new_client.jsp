<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Novo cliente</title>
</head>
<body>

<div align="center">
	<h2>Novo cliente</h2>
	<form:form action="save" method="post" modelAttribute="cliente">
	
		<table border="0" cellpadding="5">
			<tr>
				<td>Nome:</td>
				<td><form:input path="name" /></td>
			</tr>
			<tr>
				<td>E-mail:</td>
				<td><form:input path="email" /></td>
			</tr>
			<tr>
				<td>Endereço:</td>
				<td><form:input path="address" /></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Salvar" /></td>
			</tr>
		
		<h2><a href="/GerenciadorClientes">Voltar</a></h2>
			
		</table>
	
	</form:form>

</div>

</body>
</html>