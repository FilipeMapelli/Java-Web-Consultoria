<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
	<c:import url="menu.jsp"></c:import>
	
	
	
	<div class="container-fluid" style="background-color: #E0E6F8;">
		<div class="col-md-2">
		</div>
		<div class="col-md-8">
				<h2><b> Login ></b>&nbsp;
				</h2>
		</div>
	</div>
	
	<div class="container">
		<br /><br />
		<div>
			<br />
			<div class="col-md-2"></div>
			<div class="col-md-4">
				<div class="col-md-12 thumbnail" style="background-color: #E0E6F8;">
  					<form role="form" action="efetuaLogin">
    					<div class="form-group">
      						<label for="email">Email:</label>
      						<input autofocus="autofocus" type="email" class="form-control" 
      							name="email" placeholder="Entre seu email" required="required">
    					</div>
    					<div class="form-group">
      						<label for="pwd">Senha:</label>
      						<input type="password" class="form-control" name="senha" placeholder="Entre sua senha"
      							required="required">
    					</div>
    					<div class="checkbox">
      						<label><input type="checkbox"> Lembrar-me</label>
    					</div>
    					<button type="submit" class="btn btn-default">Entrar</button>
  					</form>
  				</div>
  			</div>
  			<div class="backg col-md-4">
  				<br />
  				<h3>Entre em sua conta</h3>
  				<p>Faça o login e tenha acesso à sua página. Lá você poderá solicitar orçamento,
  				   consultar andamento de seu projeto em execução, e muito mais.
  				</p>
  				<p>Ainda não tem cadastro? <a href="cadastro">Clique aqui</a> e faça agora mesmo.</p>
  			</div>
  		</div>
	</div>
	
	<div class="container">
		<div class="col-md-2">
		</div>
		<div class="col-md-8 mark">
			<c:if test="${not empty sucesso}">
				<div class="alert alert-success fade in">
    				<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
    				<strong>Cadastro realizado com sucesso!</strong>&nbsp;Faça seu login
  				</div>
  			</c:if>
  			<c:if test="${not empty erroLogin}">
				<div class="alert alert-danger fade in">
    				<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
    				<strong>Usuário ou senha inválidos!</strong>&nbsp;Faça seu login novamente.
  				</div>
  			</c:if>
		</div>
	</div>
	
	<hr />
	<c:import url="rodape.jsp"></c:import>
</body>
</html>