<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.Scanner" %>
    

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Insert title here</title>
	
	<!-- bootstrap -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	
</head>
<body>
	<button class="btn btn-success">clica em mim</button>
	
	<%-- declaracao --%>
	<%!
		int somar(int a, int b){
			return a + b;		
		}
	%>
	
	<%-- scriptlet --%>
	<% 
		int idade = 20;
		Scanner sc = new Scanner(System.in);
	%>
	
	<%-- expressao  --%>
	<%=somar(10, idade) %>
	
	
	<%-- comentario --%>
	
	
	<button type="button" class="btn btn-primary">
	  Soma <span class="badge badge-light"><%=somar(10, idade) %></span>
	</button>
	
	<%@ include file="cabecalho.html" %>

	
</body>
</html>