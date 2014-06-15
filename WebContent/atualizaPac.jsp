<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/estilo.css">

</head>
<body>

<c:import url="cabecalho.jsp"></c:import>

<form class="form-container" action="gravar" method="post">

           
                <c:forEach var="pac" items="${paclista}">
               		
                    <input class="form-field" type="hidden" name="id" size=5 maxlength=5 value="${pac.idpac}"/>
                    <div class="form-title">Nome</div>
                    <input class="form-field" type="text" name="nome" size=60 maxlength=60 value="${pac.nome}" required />
                    <div class="form-title">CPF</div>
                    <input class="form-field" type="text" name="cpf" size=14 maxlength=14 value="${pac.cpf}" pattern="\d{3}\.\d{3}\.\d{3}\-\d{2}" placeholder="999.999.999-99" required />
                    <div class="form-title">Endereço</div>
                    <input class="form-field" type="text" name="endereco" size=60 maxlength=60 value="${pac.endereco}" required />
                    <div class="form-title">Bairro</div>
                    <input class="form-field" type="text" name="bairro" size=60 maxlength=60 value="${pac.bairro}" required />
                    <div class="form-title">Cidade</div>
                    <input class="form-field" type="text" name="cidade" size=40 maxlength=40 value="${pac.cidade}" required />
                    <div class="form-title">Estado</div>
                    <input class="form-field" type="text" name="estado" size=3 maxlength=3 value="${pac.estado}" required />
                    
                    <input type="hidden" name="opc" value="atualizapac"/>
                    </br>
                    <input class="form-title" type="submit" value="Gravar"/></br></br>
                    <a class="form-title" href="listarPaciente" value="Voltar">Voltar</a>
                
                </c:forEach>
            
        
</form>
<c:import url="rodape.jsp"></c:import>
</body>
</html>