<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 	<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
	
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>OnAFaim_Inscription</title>
	<c:set var="ctx" value="${pageContext.servletContext.contextPath}"></c:set>
<link rel="stylesheet" href="${ctx}/bootstrap/css/bootstrap.min.css">
<script type="text/javascript" src="${ctx}/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<div id="header" class="row">
    	<div class="col-12">
        	<p id="nomSite">On a faim</p>
   		</div>
   	</div>
<div id="container" class="row">
	<div class="col-12">
	<form>
		<h1>Inscription</h1>
		
		<form:form action="add" method="post" modelAttribute="personne">
			<form:hidden path="version"/>
				<div class="form-group">
					<form:label path="nom">nom:</form:label>
					<form:input path="nom" cssClass="form-control"/>
					<form:errors path="nom"></form:errors>
				</div>
				<div class="form-group">
					<form:label path="prenom">prenom:</form:label>
					<form:input path="prenom" cssClass="form-control"/>
					<form:errors path="prenom">
						<div class="alert alert-danger">a remplir</div>
					</form:errors>
				</div>
				<div class="form-group">
					<form:label path="tel">numero de telephone:</form:label>
					<form:input type="number" path="tel" cssClass="form-control"/>
				</div>
				<div class="form-group">
					<form:label path="email">email:</form:label>
					<form:input type="email" path="email" cssClass="form-control"/>
				</div>
				<div class="form-group">
					<form:label path="mdp">mot de passe:</form:label>
					<form:input type="password" path="mdp" cssClass="form-control"/>
				</div>
				<div class="form-group">
					<button type="submit" class="btn btn-success">sinscrire</button>
					<a href="${ctx}/index" class="btn btn-warning">annuler</a>
				</div>
				<div class="form-check">
					<form:input type="checkbox" class="form-check-input" id="dropdownCheck"/>
					<form:label class="form-check-label" for="dropdownCheck">Remember me</form:label>
				</div>
		</form:form>
		
	<div id="footer" class="row">
            <div class="col-12">
                <p style="padding-top:15px">©️ 2019-2020 Formation AJC Ingenierie - SOPRA</p>
            </div>
    </div>

</body>

<script>
menuConnect.style.display="block";
menuConnect.style.margin="auto";
menuConnect.style.maxWidth="30%";

</script>


</html>