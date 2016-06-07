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
				<h2><b> Minha Página ></b>&nbsp;
				</h2>
		</div>
	</div>
	
	<br />
	<div class="container-fluid">
		<div class="col-md-2">	
		</div>
		<div class="col-md-3">
			<div class="col-md-12 thumbnail">
				<h3>Meus Dados</h3>
				<h5>Nome: ${usuarioLogado.nome}</h5>
				<h5>E-mail: ${usuarioLogado.email}</h5>
				<h5>Fone: ${usuarioLogado.fone}</h5>
				<a class="btn btn-default" href="mostraUsuario">Editar</a>
				<br /><br />
			</div>
			
		</div>
		<div class="col-md-5">
			<div class="col-md-12 thumbnail">
				<h3>Minhas solicitações</h3>
				<c:forEach items="${orcamentos}" var="orcamento" varStatus="id">
					<h5>${id.count} - ${orcamento.descricao}</h5>
				</c:forEach>
			</div>
		</div>
		<div class="col-md-2"></div>
	</div>
	
	<hr />
	<c:import url="rodape.jsp"></c:import>
</body>
</html>