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
		
		<div class="col-md-8 col-md-offset-2">
				<h2><b> Orçamento ></b>&nbsp;
				</h2>
		</div>
	</div>
	
	<div class="container">
		
		<div class="col-md-3 col-md-offset-2">
			<br /><br /><br />
			<img class="thumbnail img-responsive" alt="" src="images/orcamento.jpeg">
		</div>
		<div class="col-md-5">
			<br /><br />
			<form action="salvaOrcamento" role="form">
				<input type="hidden" name="id" value="${usuarioLogado.id}">
			 	<div class="form-group">
  					<label for="lab">Descreva sobre sua demanda:</label>
  					<textarea class="form-control" rows="8" id="lab" 
  						required="required" autofocus="autofocus" name="descricao"></textarea>
				</div>
				<button type="submit" class="btn btn-default">Enviar</button>
			</form>
		</div>
		
	</div>
	
	<hr />
	<c:import url="rodape.jsp"></c:import>
</body>
</html>