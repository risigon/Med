<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Menu Admin</title>
<link rel="stylesheet" href="resources/css/menu.css">

</head>
<body>
<c:import url="cabecalho.jsp"></c:import>
<%
	HttpSession sessao = request.getSession(true);
	if((sessao.getAttribute("usuario")==null) || (sessao.getAttribute("usuario")=="")){
%>
	<h4>Acesso Negado...
	<a href="logindb">Login</a>
	</h4>
<%
	}else{
%>	
	<ul class="menu">
		<li> <a href="">Paciente</a> 
			<ul>
				<li> <a href="cadPaciente">Cadastrar</a></li>
				<li> <a href="listarPaciente">Alterar</a></li>
				<li> <a href="listarPaciente">Excluir</a></li>
				
			</ul>
				
		</li>
		<li> <a href="">Médico</a> 
			<ul>
				<li> <a href="cadMedico">Cadastrar</a></li>
				<li> <a href="listarMedicos">Alterar</a></li>
				<li> <a href="listarMedicos">Excluir</a></li>
				
			</ul>
		</li>
		<li> <a href="">Consulta</a> 
			<ul>
				<li> <a href="cadConsulta">Cadastrar</a></li>
				<li> <a href="listarConsultas">Alterar</a></li>
				<li> <a href="listarConsultas">Excluir</a></li>
				
			</ul>
		</li>
		<li> <a href="">Relatórios</a> 
			<ul>
				<li> <a href="listarPaciente">Listar Pacientes</a></li>
				<li> <a href="listarMedicos">Listar Médicos</a></li>
				<li> <a href="listarConsulta">Listar Consultas</a></li>
				<li> <a href="">Listar Consultas por Periodo</a></li>
				<li> <a href="">Listar Consultas por Medico</a></li>
			</ul>
		</li>
		<li> <a href="cadUsuario">Cadastrar Usuários</a></li>
	</ul>
	
<%
	}
%>	
<c:import url="rodape.jsp"></c:import>
</body>
</html>