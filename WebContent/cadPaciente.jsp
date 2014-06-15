<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastrar Paciente</title>

<link rel="stylesheet" href="resources/css/estilo2.css">

</head>
<body>
<c:import url="cabecalho.jsp"></c:import>
<!--%
	HttpSession sessao = request.getSession(true);
	if((sessao.getAttribute("usuario")==null) || (sessao.getAttribute("usuario")=="")){
%>
	<h4>Acesso Negado...
	<a href="logindb">Login</a>
	</h4-->
<!-- %
	}else{
%-->	

<form action="cadPaciente" method="post">
<table align="center" border="1">
<tr>
<td align="right" bgcolor=#ccc><label>Nome:</label></td>
<td><input type="text" name="nome" size=50 placeholder="Jose da Silva" value=""></td>
</tr>
<tr>
<td align="right" bgcolor=#ccc><label>CPF:</label></td>
<td><input type="text" name="cpf" size=14 maxlength=14 value="" pattern="\d{3}\.\d{3}\.\d{3}\-\d{2}" placeholder="999.999.999-99"></td>
</tr>
<tr>
<td align="right" bgcolor=#ccc><label>Endereco:</label></td>
<td><input type="text" name="endereco" size=50 value=""></td>
</tr>
<tr>
<td align="right" bgcolor=#ccc><label>Bairro:</label></td>
<td><input type="text" name="bairro" size=50 value=""></td>
</tr>
<tr>
<td align="right" bgcolor=#ccc><label>Cidade:</label></td>
<td><input type="text" name="cidade" size=50 value="Sao Carlos"></td>
</tr>
<tr>
<td align="right" bgcolor=#ccc><label>Estado:</label></td>
<td><input type="text" name="estado" size=2 value="SP"></td>
</tr>
<tr>
<td align="right" bgcolor=#ccc><label>Login:</label></td>
<td><input type="text" name="login" size=50 value=""></td>
</tr>
<tr>
<td align="right" bgcolor=#ccc><label>Senha:</label></td>
<td><input type="password" name="senha" size=20 value=""></td>
</tr>
<tr>
<td align="right" bgcolor=#ccc><label>ConfirmaSenha:</label></td>
<td><input type="password" name="" size=5 value=""></td>
</tr>

<tr>
<td align="center" bgcolor=#ccc><input type="submit" value="Enviar"></td>
</tr>
<tr>
<td align="center" bgcolor=#ccc><input type="reset" value="Limpar"></td>
</tr>
</table>
</form>
<a id="right" class="submit-button" href="menuAdmin.jsp">Voltar</a>
<!-- %
	}
%-->
<c:import url="rodape.jsp"></c:import>
</body>
</html>