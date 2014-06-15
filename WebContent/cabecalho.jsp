<%@page import="java.util.*"%>
<%@page import="java.text.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cabecalho</title>
<link rel="stylesheet" href="resources/css/estilo.css">

<% HttpSession sessao = request.getSession(true); 
String usuario = (String) sessao.getAttribute("usuario");
%>
<div class="form-container">
<a href="menu"><img src="<c:url value="resources/img/climed.jpg"/>"/></a>
<%
	if((sessao.getAttribute("usuario")==null) || (sessao.getAttribute("usuario")=="")){
%>
<h3 align="right">Olá, Visitante.<br>
<a href="logindb">Login</a></h3>
<%}else{ 
%>
<h3 align="right">Ola, <c:out value="${usuario}"></c:out>
			<br><a href="logout">Sair</a> </h3>
<% 
}
%>
<p class=form-title align="right">
<%Date date = new java.util.Date();
			pageContext.setAttribute("date", date);%>
<c:set var="date" value="${date}" />
Data Atual:
<fmt:formatDate pattern="dd/MM/yyyy" value="${date}"/><br>
Hora:
<fmt:formatDate type="time" value="${date}"/>

</p>


</div>	

</head>
<body>

</body>
</html>