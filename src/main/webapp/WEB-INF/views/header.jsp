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