<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
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

	<img id="logo" src="image/logo_Onafaim_1.png" width="100" height="100"></div>
		
		
		<div id="header" class="row">
			<div class="col-10">
				<p id="nomSite">On a faim</p>
			</div>
				
			<div class="col-2">
			<!-- quand on aura géré la connexion, se baser sur index dans le OnAFaimJpaBack -->
				<a href="${ctx}/inscription" class="btn btn-light">Inscription</a>
			</div>
		</div> 
		
		<div id="content" class="row">
			<div id="menu" class="col-3">
					<ul>
						<li><a href="${ctx}/menu/sandwichs">Sandwichs</a></li>
						<li><a href="${ctx}/menu/viennoiseries">Viennoiseries</a></li>
						<li><a href="${ctx}/menu/gateaux">Gâteaux</a></li>
						<li><a href="${ctx}/menu/boissons">Boissons</a></li>
						<li><a href="${ctx}/menu/menus">Menus</a></li>
						<li><a href="${ctx}/menu/devis">Devis</a></li>
					</ul>
			</div>
			<div class="col-9">
					<img id="imgIndex" src="image/boulangerie3.jpg" height="500">
			</div>
		</div>	
			
		<div id="footer" class="row">
			<div class="col-12">
				<p style="padding-top:15px" >© 2019-2020 Formation AJC Ingenierie - SOPRA</p>
			</div>
		</div> 




</body>
</html>


