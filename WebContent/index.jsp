<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Menu</title>
<link rel="stylesheet" href="resources/css/menu.css">

</head>
<body>
<c:import url="cabecalho.jsp"></c:import>
	
	<ul class="menu">
	
		<li> <a href="">Institucional</a> 
			<ul>
				<li> <a href="empresa.jsp">Empresa</a></li>
				<li> <a href="historia.jsp">História</a></li>
				<li> <a href="contato.jsp">Contato</a></li>
				<li> <a href="Notícias.jsp">Noticias</a></li>
			</ul>
				
		</li>
		<li> <a href="">Paciente</a> 
			<ul>
				<li> <a href="cadPaciente">Cadastrar</a></li>
				<li> <a href="listarPaciente">Alterar</a></li>
				<li> <a href="listarPaciente">Excluir</a></li>
				<li> <a href="listarPaciente">Listar</a></li>
			</ul>
				
		</li>
		<li> <a href="">Médico</a> 
			<ul>
				<li> <a href="cadMedico">Cadastrar</a></li>
				<li> <a href="listarMedicos">Alterar</a></li>
				<li> <a href="listarMedicos">Excluir</a></li>
				<li> <a href="listarMedicos">Listar</a></li>
			</ul>
		</li>
		
		
		
	</ul>
	
	
<c:import url="rodape.jsp"></c:import>
</body>
</html>