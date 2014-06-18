<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Listar Consultas</title>
<link rel="stylesheet" href="resources/css/estilo.css">
</head>
<body>

<c:import url="cabecalho.jsp"></c:import>

<a id="right" class="submit-button" href="menu">Voltar</a>

<table id="zebra" class="tabela">
            <thead>
            <tr>
            		<th colspan=9>Listagem de Consultas Cadastradas</th>
            </tr>
                <tr>
                    <th>Id</th>
                    <th>Nome Paciente</th>
                    <th>Nome Medico</th>
                    <th>CPF</th>
                    <th>CRM</th>
                    <th>Data</th>
                    <th>Hora</th>
                    <th>Observação</th>
                    <th>Retorno</th>
                    
              
                </tr>
            </thead>
            <tbody>
                <c:forEach var="con" items="${conlista}">
                <tr>
                    <td width=20 align="center"><c:out value="${con.id}"  /></td>
                    <td width=150 align="left"><c:out value="${con.pac.getNome()}" /></td>
                    <td width=150 align="left"><c:out value="${con.med.getNome()}" /></td>
                    <td width=130 align="center"><c:out value="${con.pac.getCpf()}" /></td>
                    <td width=100 align="center"><c:out value="${con.med.getCrm()}" /></td>
                    <td width=150 align="left"><c:out value="${con.dtcons}" /></td>
                    <td width=120 align="left"><c:out value="${con.hora}"  /></td>
                    <td width=90 align="left"><c:out value="${con.obs}"  /></td>
                    <td width=20 align="center"><c:out value="${con.retorno}"  /></td>
                </tr>
                </c:forEach>
            </tbody>
        </table>
        <p>Quantidade de Registros - <c:out value="${contador}"  /></p>
<form action="listar" method="post">
	<table class="tabela2">
	<tr>
	<td>Informar Nome:
	<input type="text" name="nome" size=50>
	<input type="hidden" name="opc" value="listarmednome">
	<input type="submit" value="Buscar"></td>
	</tr>
	</table>
</form>        

<form action="atualizamed" method="post">
	<table  class="tabela2">
	<tr>
	<td>Informar Id:
	<input type="text" name="id" value="1" size=3>
	<input type="submit" value="Alterar"></td>
	</tr>
	</table>
</form>        

<form action="excluir" method="post">
	<table class="tabela2">
	<tr>
	<td>Informar Id:
	<input type="text" name="id" value="1" size=3>
	<input type="hidden" name="opc" value="excluirmed">
	<input type="submit" value="Excluir"></td>
	</tr>
	</table>
</form>

<form action="listar" method="post">
	<input type="hidden" name="opc" value="listarmed">
	<input type="submit" value="Listar Todos">
</form>
<form action="cadMedico.jsp">
	<input type="submit" value="Novo Medico">
</form>

<c:import url="rodape.jsp"></c:import>
</body>
</html>