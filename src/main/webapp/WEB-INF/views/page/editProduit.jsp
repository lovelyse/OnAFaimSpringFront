<%@include file="../header.jsp" %>
	
	<div class="container" id="content">
		
		<h1>Edition d'un sandwich</h1>
		
		<form:form action="saveProduit" method="post" modelAttribut="produit">
			<form:hidden path="version"/>
			
			<div class="form-group">
				<form:label path="libelle">Libelle :</form:label>
				<form:input path="libelle" cssClass="form-control"/>	
			</div>
			
			<div class="form-group">
				<form:label path="typeProduit">Type :</form:label>
				<form:select path="typeProduit" items="${type}" cssClass="form-control"/>
			</div>
			
			<div class="form-group">
				<form:label path="tailleProduit">Taille :</form:label>
				<form:select path="tailleProduit" items="${taille}" cssClass="form-control"/>
			</div>
			
			<div class="form-group">
				<form:label path="prix">Prix :</form:label>
				<form:input path="prix" cssClass="form-control"/>	
			</div>
			
			<div class="form-group">
				<form:label path="description">Description :</form:label>
				<form:input path="description" cssClass="form-control"/>	
			</div>
			
<!-- 			<div class="form-group"> -->
<%-- 				<form:label path="photo">Photo :</form:label> --%>
<%-- 				<form:input path="photo" cssClass="form-control"/>	 --%>
<!-- 			</div> -->
			
		</form:form>
	
	</div>	
		
		
<%@include file="../footer.jsp" %>