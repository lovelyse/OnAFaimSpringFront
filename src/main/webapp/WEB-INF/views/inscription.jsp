<%@include file="header.jsp" %>


<div id="container">
		<h1>Inscription</h1>
		
		<form:form action="add" method="post" modelAttribute="compte">
			<form:hidden path="version"/>
				<div class="form-group">
					<label path="nom">nom:</label>
					<form:input path="nom" cssClass="form-control"></form:input>
					<form:errors path="nom"></form:errors>
				</div>
<!-- 				<div class="form-group"> -->
<!-- 					<label for="exampleDropdownFormEmail1">Adresse</label> -->
<!-- 					<input type="text" class="form-control" id="exampleDropdownFormEmail1" placeholder="Saisir votre nom"> -->
<!-- 				</div> -->
				<div class="form-group">
					<form:label path="prenom">prenom:</form:label>
					<form:input path="prenom" cssClass="form-control"></form:input>
					<form:errors path="prenom">
						<div class="alert alert-danger"></div>
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
				
		</form:form>
		
<%@include file="footer.jsp" %>

<html>
<script>
menuConnect.style.display="block";
menuConnect.style.margin="auto";
menuConnect.style.maxWidth="30%";
</script>
</html>