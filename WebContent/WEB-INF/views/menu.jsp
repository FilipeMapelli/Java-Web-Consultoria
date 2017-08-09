<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>FeL Consulting - Consultoria, Desenvolvimento e Soluções em Sotware.</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initi al-scale=1">
        <link rel="apple-touch-icon" href="apple-touch-icon.png">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <style>
            body {
                padding-top: 10px;
                padding-bottom: 20px;
            }
        </style>
        <link rel="stylesheet" href="css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="css/main.css">
        <script src="js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
</head>
<body>
	
		<div class="container">
		<div class="col-md-2">
			<img alt="" src="images/logo.png">
		</div>
		<div class="col-md-7">	
			<br />
			<div class="dropdown">
  				<ul>
  					<li><a class="dropdown-toggle" href="home">
    					<span class="glyphicon glyphicon-home"></span>&nbsp;Home</a>
    				</li>
  					<li><a class="dropdown-toggle" href="sobre">Sobre a FMS</a></li>
    				<li><a class="dropdown-toggle" href="#" data-toggle="dropdown">Serviços</a>
    					<ul class="dropdown-menu">
      						<li><a class="submenu" href="consultoria">Consultoria</a></li>
      						<li><a class="submenu" href="dev">Desenvolvimento</a></li>
    					</ul>
    				</li>
    				<li><a class="dropdown-toggle" href="contato">Contato</a></li>	
    				<li>	
    					<c:choose>
    						<c:when test="${not empty usuarioLogado}">
    							<a class="disable" hidden="true">
    								<span class="glyphicon glyphicon-log-in"></span>&nbsp;Login</a>
    						</c:when>
    						<c:otherwise>
    							<a class="dropdown-toggle" href="login">
    								<span class="glyphicon glyphicon-log-in"></span>&nbsp;Login</a>
    						</c:otherwise>
    					</c:choose>
    				</li>
    				
    				<li>
    					<c:choose>
    						<c:when test="${not empty usuarioLogado}">
    							<a class="dropdown-toggle" href="#" data-toggle="dropdown" 
    									style="color: blue;">
    								<span class="glyphicon glyphicon-user"></span>
    								&nbsp;${usuarioLogado.nomeUsuario}</a>
    								<ul class="dropdown-menu">
    									<li><a class="submenu" href="orcamento">Solicitar Orçamento</a></li>
      									<li><a class="submenu" href="minhaPagina">Minha página</a></li>
      									<li><a class="submenu" href="logout">Logout</a></li>
    								</ul>		
    						</c:when>
    							<c:otherwise>
    								<a class="dropdown-toggle" href="cadastro">
    								<span class="glyphicon glyphicon-user"></span>
    								&nbsp;Cadastre-se</a>
    							</c:otherwise>
    						</c:choose>
    					
    				</li>
    			</ul>
  			</div>
		</div>
		<div class="col-md-3">
			<div align="right">
    			<br /><br />
    				<c:import url="data.jsp"></c:import>		
    		</div>
    	</div>
	</div>
	
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.js"></script>
    <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.11.2.js"><\/script>')</script>

    <script src="js/vendor/bootstrap.min.js"></script>

    <script src="js/main.js"></script>

    <!-- Google Analytics: change UA-XXXXX-X to be your site's ID. -->
    <script>
            (function(b,o,i,l,e,r){b.GoogleAnalyticsObject=l;b[l]||(b[l]=
            function(){(b[l].q=b[l].q||[]).push(arguments)});b[l].l=+new Date;
            e=o.createElement(i);r=o.getElementsByTagName(i)[0];
            e.src='//www.google-analytics.com/analytics.js';
            r.parentNode.insertBefore(e,r)}(window,document,'script','ga'));
            ga('create','UA-XXXXX-X','auto');ga('send','pageview');
    </script>
</body>
</html>