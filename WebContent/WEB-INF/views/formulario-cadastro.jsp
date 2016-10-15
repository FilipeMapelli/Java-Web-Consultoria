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
		
		<div class="col-md-2 col-md-offset-2">
				<h2><b> Cadastro ></b>&nbsp;
				</h2>
		</div>
	</div>
	
	<div class="container">
		<div>
			<br />
			
			<div class="col-md-4 col-md-offset-2">
				<div class="col-md-12 thumbnail" style="background-color: #E0E6F8;">
		  		
  					<form role="form" action="efetuaCadastro">
  						<div class="form-group">
      						<label for="nome">Nome:</label>
      						<input autofocus="autofocus" type="text" class="form-control" 
      							name="nome" placeholder="Entre seu nome" required="required">
    					</div>
    					<div class="form-group">
      						<label for="nomeUsuario">Apelido:</label>
      						<input type="text" class="form-control" name="nomeUsuario"
      							placeholder="Como deseja ser chamado?" required="required">
    					</div>  			
    					<div class="form-group">
      						<label for="fone">Fone:</label>
      						<input type="text" class="form-control" name="fone"
      							placeholder="Entre seu telefone" required="required">
    					</div>
    					<div class="form-group">
      						<label for="email">E-mail:</label>
      						<input type="email" class="form-control" name="email"
      							placeholder="Entre seu e-mail" required="required">
    					</div>
    					<div class="form-group">
      						<label for="pwd">Senha:</label>
      						<input type="password" class="form-control" name="senhaNaoCriptografada" placeholder="Entre sua senha"
      							required="required">
    					</div>
    	
    					<button type="submit" class="btn btn-default">Cadastrar</button>
  					</form>
  				</div>
  			</div>
  			
  			<div class="col-md-4">
  				<br /><br />
  				<h3>Cadastre-se</h3>
  				<p>Nosso cadastro é simples e rápido, preencha o formulário ao lado e em pouco tempo 
  				   você poderá acessar sua plataforma e de forma eficaz realizar contato conosco.
  				</p>
  				<br />
  				<h3>Já possui Cadastro?</h3>
  				<p>Se você já efetuou seu cadastro, <a href="login">clique aqui</a> 
  				   e faça agora mesmo seu login.
  				</p>
  				<div class="col-md-12">
  				<c:if test="${not empty erro}">
					<div class="alert alert-danger fade in">
   						<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
    					<strong>Usuário já cadastrado</strong>&nbsp;Acesse o login. 
  					</div>
  				</c:if>
		</div>
  			</div>
  		</div>
	</div>
	
	
	<hr />
	<c:import url="rodape.jsp"></c:import>
	
</body>
</html>