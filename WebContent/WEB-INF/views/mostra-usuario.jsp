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
				<h2><b> Cadastro ></b>&nbsp;
					Editar
				</h2>
		</div>
	</div>
	
	<div class="container">
		<div>
			<br />
			<div class="col-md-2"></div>
			<div class="col-md-4">
				<div class="col-md-12 thumbnail" style="background-color: #E0E6F8;">
		  		
  					<form role="form" action="editar">
  						<input type="hidden" value="${usuarioLogado.id}" name="id">
  						<div class="form-group">
      						<label for="nome">Nome:</label>
      						<input autofocus="autofocus" type="text" class="form-control" 
      							name="nome" placeholder="Entre seu nome" required="required"
      							value="${usuarioLogado.nome}">
    					</div>
    					<div class="form-group">
      						<label for="nomeUsuario">Apelido:</label>
      						<input type="text" class="form-control" name="nomeUsuario"
      							placeholder="Como deseja ser chamado?" required="required"
      							value="${usuarioLogado.nomeUsuario}">
    					</div>  			
    					<div class="form-group">
      						<label for="fone">Fone:</label>
      						<input type="text" class="form-control" name="fone"
      							placeholder="Entre seu telefone" required="required"
      							value="${usuarioLogado.fone}">
    					</div>
    					<div class="form-group">
      						<label for="email">E-mail:</label>
      						<input type="email" class="form-control" name="email"
      							placeholder="Entre seu e-mail" required="required"
      							value="${usuarioLogado.email}">
    					</div>
    					<input type="hidden" name="senha" value="${usuarioLogado.senha}">
    	
    					<button type="submit" class="btn btn-default">Salvar</button>
  					</form>
  				</div>
  			</div>
  			
  			<div class="col-md-4">
  				<br /><br />
  				<h3>Alterar Dados</h3>
  				<p>
  				</p>
  				<br />
  				<h3>Já esta atualizado?</h3>
  				<p>Se você não tem alterações a fazer, <a href="minhaPagina">clique aqui</a> 
  				   para retornar.
  				</p>
  			</div>
  		</div>
	</div>
	
	
	<hr />
	<c:import url="rodape.jsp"></c:import>
	
</body>
</html>