<%@ page language="java" contentType="text/html; charset=utf-8"	
	pageEncoding="utf-8" import="br.com.impacta.javaweb.despesas.dao.*,  
								 br.com.impacta.javaweb.despesas.model.*, 
								 java.util.*" %>

<!DOCTYPE html>
<html lang="pt"> 
<head>

<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/bootstrap.min.js"></script>
<title>Listagem de Despesas Pessoais</title>

</head>

<body>
	<!-- CONTEÚDO PRINCIPAL -->
	<div class="panel panel-default">
		<div class="panel-heading">Despesas Pessoais</div>
			<div class="panel-body">
				Listagem das últimas despesas pessoais registradas:
			</div>
		<table class="table">
			<thead>
				<tr>
					<th>Descrição</th>
					<th>Categoria</th>
					<th>Data</th>
					<th>Valor</th>
					<th>Observações</th>
				</tr>
			</thead>
			<tbody>
				<%-- Buscar os dados  --%>
				<%
					DAODespesa dao = new DAODespesa();
					List<Despesa> despesas = dao.getDespesas();
				%>
				<%--Início do bloco de repetição --%>
				<% for (Despesa despesa : despesas) { %>
				<%--Início do bloco de repetição --%>
					<tr>
						<td><%= despesa.getDescricao() %></td>
						<td><%= despesa.getCategoria() %></td>
						<td><%= despesa.getData() %></td>
						<td><%= String.format("R$ %.2f",despesa.getValor()) %></td>
						<td><%= (despesa.getObservacoes() != null) ? despesa.getObservacoes() : "" %></td>
					</tr>
				<% } %>
				<%--Fim do bloco de repetição --%>
			</tbody>
		</table>
	</div>	
</body>
</html>