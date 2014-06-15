<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Cadastro Medicos</title>

<link rel="stylesheet" href="resources/css/estilo2.css">

 <script type="text/javascript">  
 function formatar(mascara, documento){
  var i = documento.value.length;
  var saida = mascara.substring(0,1);
  var texto = mascara.substring(i)
  
  if (texto.substring(0,1) != saida){
            documento.value += texto.substring(0,1);
  }
  
}

 </script>

</head>
<body>
<c:import url="cabecalho.jsp"></c:import>
<a id="right" class="submit-button" href="menuAdmin.jsp">Voltar</a>
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

<form class="form-container" action="cadMedico" method="post">
<div class="form-title"><h4>Cadastrar Medicos</h4></div>
<div class="form-title">Nome</div>
<input class="form-field" type="text" name="nome" size=50/><br />
<div class="form-title">CPF</div>
<input class="form-field" type="text" name="cpf" size=14 maxlength=14 OnKeyPress="formatar('###.###.###-##', this)" /><br />
<div class="form-title">CRM</div>
<input class="form-field" type="text" name="crm" size=7 maxlength=7 OnKeyPress="formatar('###.###', this)" /><br />
<div class="form-title">Endereço</div>
<input class="form-field" type="text" name="endereco" size=60 /><br />
<div class="form-title">Bairro</div>
<input class="form-field" type="text" name="bairro" size=60 /><br />
<div class="form-title">Cidade</div>
<input class="form-field" type="text" name="cidade" size=50 /><br />
<div class="form-title">Estado</div>
<input class="form-field" type="text" name="estado" size=2/><br />
<div class="form-title">Login</div>
<input class="form-field" type="text" name="login" size=40/><br />
<div class="form-title">Senha</div>
<input class="form-field" type="password" name="senha" size=40/><br />
<input class="submit-button" type="submit" value="Enviar"/><br />
<input class="submit-button" type="reset" value="Limpar"/><br />
</form>
<!-- %
	}
%-->
<c:import url="rodape.jsp"></c:import>
</body>
</html>