<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastrar Usuários</title>

<link rel="stylesheet" href="resources/css/estilo2.css">

</head>
<body>
	
	<c:import url="cabecalho.jsp"></c:import>
	
	<script language="JavaScript" src="resources/js/validacampos.js"></script>
	
	<form class="form-container" action="cadUsuario" method="post"> 
		
			<div class="form-title"><h4>Cadastro de Usuários</h4></div>
		
			<div class="form-title">Usuário</div>
			<input class="form-field" type="text" id="usuario" name="usuario" size=30 onblur="validausuario();"/>
			<label id="errorusuario"></label>
			
			<div class="form-title">Senha</div>
			<input class="form-field" type="password" id="pass" name="pass" size=10 onblur="validasenha();"/>
			<label id="errorsenha"></label><br>
			
			<div class="form-title">Confirmar Senha</div>
			<input class="form-field" type="password" id="passconf" name="passconf" size=10 onblur="confirmasenha();"/>
			
			<label id="errorconfsenha"></label><br>
			
			<input class="submit-button" type="submit" value="Entrar">
	
	</form>
	
	<c:import url="rodape.jsp"></c:import>
</body>
</html>