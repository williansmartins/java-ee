<%@ page language="java" contentType="text/html; charset=utf-8"	
	pageEncoding="utf-8" import="br.com.impacta.javaweb.despesas.dao.*,  
								 br.com.impacta.javaweb.despesas.model.*, 
								 java.util.*" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="pt"> 
<head>

<link rel="stylesheet" href="css/bootstrap.min.css">

<script
  src="https://code.jquery.com/jquery-3.4.1.min.js"
  integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
  crossorigin="anonymous"></script>
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
						<th>Ações</th>
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
							<td title="123"><%= despesa.getDescricao() %></td>
							<td><%= despesa.getCategoria().getTextoHumanizado() %></td>
							<td>
								<%= despesa.getDataFormatada() %>
							</td>
							<td><%= String.format("R$ %.2f",despesa.getValor()) %></td>
							<td>
								<div class="progress">
								  <div class="progress-bar progress-bar-striped bg-warning" style="width: <%=Integer.parseInt(despesa.getObservacoes())*10%>% " role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
								</div>
							</td>
							<td>
								<button class="btn btn-success">
									<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
									editar
								</button>
								<button class="btn btn-danger">
									<span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
									excluir
								</button>
							</td>
						</tr>
					<% } %>
					<%--Fim do bloco de repetição --%>
				</tbody>
			</table>
	</div>	
	
</body>
</html>