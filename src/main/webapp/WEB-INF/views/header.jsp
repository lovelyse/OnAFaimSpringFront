<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    
<!DOCTYPE html>
<html>
<head>

	<meta charset="UTF-8">
	<title>OnAFaim</title>
	
	<c:set var="ctx" value="${pageContext.servletContext.contextPath}"></c:set>
	
	<link rel="stylesheet" type="text/css" href="${ctx}/style/index.css">
	<link rel="icon" type="image/png" href="${ctx}/image/logo_Onafaim_1.png">
	<link rel="stylesheet" href="${ctx}/bootstrap/css/bootstrap.min.css"> 
	<script type="text.javascript" src="${ctx}/bootstrap/js/bootstrap.min.js"></script>

</head>

<body>

	<img id="logo" src="${ctx}/image/logo_Onafaim_1.png" width="100" height="100"></div>
		
		
		<div id="header" class="row">
			<div class="col-10">
				<p id="nomSite">On a faim</p>
			</div>
				
			<div class="col-2">
			<!-- quand on aura géré la connexion, se baser sur index dans le OnAFaimJpaBack -->
				<a href="${ctx}/inscription" class="btn btn-light">Inscription</a>
			</div>
		</div> 
		
		
		
		
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
	  	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		    <ul class="navbar-nav mr-auto">
		      <li class="nav-item">
		        <a class="nav-link" href="${ctx}/menu/sandwichs">Sandwichs</a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="${ctx}/menu/viennoiseries">Viennoiseries</a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="${ctx}/menu/gateaux">Gâteaux</a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="${ctx}/menu/boissons">Boissons</a>
		      </li>
		       <li class="nav-item">
		        <a class="nav-link" href="${ctx}/menu/menus">Menus</a>
		      </li>
		       <li class="nav-item">
		        <a class="nav-link" href="${ctx}/menu/devis">Devis</a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="${ctx}/admin/gestionClient">Client</a>
		      </li>
		    </ul>
		</div>
	</nav>	
		
		
		
		
		
		