<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Atualizar Médico</title>
<link rel="stylesheet" href="resources/css/estilo.css">

</head>
<body>

<c:import url="cabecalho.jsp"></c:import>

<form class="form-container" action="gravar" method="post">

           
                <c:forEach var="med" items="${medlista}">
               		
                    <input class="form-field" type="hidden" name="id" size=5 maxlength=5 value="${med.idmed}" />
                    <div class="form-title">Nome</div>
                    <input class="form-field" type="text" name="nome" size=60 maxlength=60 value="${med.nome}" required />
                    <div class="form-title">CPF</div>
                    <input class="form-field" type="text" name="cpf" size=14 maxlength=14 value="${med.cpf}" required />
                    <div class="form-title">CRM</div>
                    <input class="form-field" type="text" name="crm" size=7 maxlength=7 value="${med.crm}" required />
                    <div class="form-title">Endereço</div>
                    <input class="form-field" type="text" name="endereco" size=60 maxlength=60 value="${med.endereco}" required />
                    <div class="form-title">Bairro</div>
                    <input class="form-field" type="text" name="bairro" size=60 maxlength=60 value="${med.bairro}" required />
                    <div class="form-title">Cidade</div>
                    <input class="form-field" type="text" name="cidade" size=40 maxlength=40 value="${med.cidade}" required />
                    <div class="form-title">Estado</div>
                    <input class="form-field" type="text" name="estado" size=3 maxlength=3 value="${med.estado}" required />
                    <input type="hidden" name="opc" value="atualizamed"/></br>
                    <input class="form-title" type="submit" value="Gravar"/></br>
                    <a class="form-title" href="listarMedicos" value="Voltar">Voltar</a>
                
                </c:forEach>
            
        
</form>
<c:import url="rodape.jsp"></c:import>
</body>
</html>