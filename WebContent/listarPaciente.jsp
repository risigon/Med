<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Listar Pacientes</title>
<link rel="stylesheet" href="resources/css/estilo.css">

</head>
<body>

<c:import url="cabecalho.jsp"></c:import>

<a id="right" class="submit-button" href="menu">Voltar</a>

<table id="zebra" class="tabela">
            <thead>
            <tr>
            		<th colspan=10>Listagem de Pacientes Cadastrados</th>
            </tr>
                <tr>
                    <th>Id</th>
                    <th>Nome</th>
                    <th>CPF</th>
                    <th>Endereco</th>
                    <th>Bairro</th>
                    <th>Cidade</th>
                    <th>Estado</th>
                    <th>Login</th>
                    <th>Senha</th>
              
                </tr>

            </thead>
            <tbody>
                <c:forEach var="pac" items="${paclista}">
                <tr>
                    <td align="center"><c:out value="${pac.idpac}"  /></td>
                    <td align="left"><c:out value="${pac.nome}" /></td>
                    <td align="center"><c:out value="${pac.cpf}" /></td>
                    <td align="left"><c:out value="${pac.endereco}" /></td>
                    <td align="left"><c:out value="${pac.bairro}"  /></td>
                    <td align="left"><c:out value="${pac.cidade}"  /></td>
                    <td align="center"><c:out value="${pac.estado}"  /></td>
                    <td align="center"><c:out value="${pac.login}"  /></td>
                    <td align="center"><c:out value="${pac.senha}"  /></td>
                </tr>
                </c:forEach>
            </tbody>
        </table>
<p>Quantidade de Registros - <c:out value="${contador}"  /></p>



<form  action="listar" method="post">
	<table class="tabela2">
	<tr>
	<td>Nome:
	<input type="text" name="nome" size=50>
	<input type="hidden" name="opc" value="listarpacnome">
	<input type="submit" value="Buscar"></td>
	</tr>
	</table>
</form>

<form action="atualizapac" method="post">
	<table class="tabela2">
	<tr>
	<td>Id:
	<input type="text" name="id" size=3>
	<input type="submit" value="Atualizar"></td>
	</tr>
	</table>
</form>        

<form action="excluir" method="post">
	<table class="tabela2">
	<tr>
	<td>Id:
	<input type="text" name="id" value="" size=3>
	<input type="hidden" name="opc" value="excluirpac">
	<input type="submit" value="Excluir"></td>
	</tr>
	</table>
</form>

<form action="listar" method="post">
	<input type="hidden" name="opc" value="listarpac">
	<input type="submit" value="Listar Todos">
</form>
<form action="cadPaciente.jsp">
	<input type="submit" value="Novo Paciente">
</form>

<c:import url="rodape.jsp"></c:import>
</body>
</html>