<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
    
<!DOCTYPE html>
<html>
<head>
	<c:set var="ctx" value="${pageContext.servletContext.contextPath}"></c:set>
	<link rel="stylesheet" type="text/css" href="${ctx}/bootstrap/css/bootstrap.min.css">
	<script type="text/javascript" src="${ctx}/bootstrap/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="./style/index.css">
	
	
	<meta charset="UTF-8">
	<title>OnAFaim</title>
	<link rel="icon" type="image/png" href="image/logo_Onafaim_1.png">
</head>

<body>

	<div><img id="logo" src="image/logo_Onafaim_1.png" width="100" height="100"></div>
		
		
		<div class="container" id="header" class="row">
			<div class="col-10">
				<p id="nomSite">On a faim</p>
			</div>
				
			<div class="col-2">
				<c:choose>
				<c:when test= "${empty sessionScope.isConnectClient}"> 
					<button id="btnConnect" type="button" class="btn btn-light" onClick="btnConnect()">Connexion</button>
					<button id="btnSignOn" type="button" class="btn btn-light" onClick="btnSignOn()" >Inscription</button>
				</c:when>
				<c:when test= "${sessionScope.isConnectClient=='Y'}"> 
					<div class="btn-group">
  						<button id="btnMonCompte" type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    					Mon Compte
  						</button>
  					<div class="dropdown-menu">
    					<a class="dropdown-item" href="#">Paramètres</a>
    					<a class="dropdown-item" href="#">Mes Commandes</a>
    					<a class="dropdown-item" href="#">Mon Panier</a>
    					<a class="dropdown-item" href="#">Mes Devis</a>
   				 	<div class="dropdown-divider"></div>
    				<a class="dropdown-item" href="#">Deconnexion</a>
  				</div>
				</c:when>
				<c:when test= "${sessionScope.isConnectAdmin=='Y'}"> 
					<button id="btnSignOn" type="button" class="btn btn-light" onClick="btnSignOn()" >Déconnexion</button>
				</c:when>
			</c:choose>
			
			</div>
		</div> 
		
		
		<div id="content" class="row">
			<div id="menu" class="col-2">
					<ul>
						<li><a href="sandwichs.jps">Sandwichs</a></li>
						<li><a href="viennoiseries.jsp">Viennoiseries</a></li>
						<li><a href="gateaux.jsp">Gâteaux</a></li>
						<li><a href="boissons.jsp">Boisson</a></li>
						<li><a href="menu.jsp">Menus</a></li>
						<li><a href="devis.jsp">Devis</a></li>
					</ul>
			</div>
			<div class="col-8">
					<img id="imgIndex" src="image/boulangerie3.jpg" height="500">
			</div>
			<div id="panier" class="col-2">
				<c:choose>
					<c:when test= "${empty sessionScope.isConnect}"></c:when> 
					<c:when test= "${sessionScope.isConnectClient=='Y'}"> 
						<p id="monPanier">Panier</p> <br>
						<table>
							<tr>
								<td>Article</td>
								<td>Qte</td>
							</tr>
							
							<c:forEach items="${ sessionScope.lstProduits }" var="panier">	
								<tr>
									<td>${panier.produit.libelle}</td> 
									<td>${paniert.qte}</td>
									<td><a href="index?supprProd=supprimer&qte=${panier.qte}">X</a></td>
									<td></td> 
								</tr> 
							</c:forEach>
						</table>
						<br>
						
						<table>
							<tr>
									<td>nb Produits</td>
									<td></td> 
								</tr> <br>
								
								<tr>
									<td>Tot. €</td>
									<td></td> 
								</tr>
						</table>
					</c:when>
			</c:choose>
			</div>
		</div> 
		
		
	<%@include file="footer.jsp" %>




</body>
</html>


<script>

function connect()
{
	location.href="page/connexion.html"
}

function inscription()
{
	location.href="page/inscription.html"
}

</script>