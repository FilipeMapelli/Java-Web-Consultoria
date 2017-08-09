<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
</head>
<body>
	
	<c:import url="menu.jsp"></c:import>
	
	<br />
	<div class="container">
	<div class="col-md-12">
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
		
	<div class="item active">
        <img class="img-responsive" src="images/ini.jpg" alt="" width="460" height="345">
        <div class="carousel-caption" style="color: black;">
			<h1>FMS Consulting.</h1>
			<h4>Bem vindo(a)! Faça seu cadastro e solicite um orçamento</h4>          	
        </div>
      </div>	
		
		
		
      <div class="item">
        <img class="img-responsive" src="images/dev.jpg" alt="" width="460" height="345">
        <div class="carousel-caption">
			<h3 class="centro">Desenvolvimento</h3>          	
        </div>
      </div>

      <div class="item">
        <img class="img-responsive" src="images/con.jpg" alt="" width="460" height="345">
          	<div class="carousel-caption" style="padding-bottom: 25%; color: black;">
				<h3 class="centro">Consultoria</h3>          	
        	</div>
      </div>
    
      <div class="item">
      
        <img class="img-responsive" src="images/ban.jpg" alt="" width="460" height="345">
        
          	<div class="carousel-caption" style="padding-bottom: 31%; color: black;">
				<h3 class="centro">Banco de Dados</h3>          	
        	</div>
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
	</div>
	</div>

	<br />
	<br />
	<hr />
	<c:import url="rodape.jsp"></c:import>
	
</body>
</html>