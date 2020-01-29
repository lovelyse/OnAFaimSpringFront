<%@include file="../header.jsp" %>
	
	<div class="container" id="content">
		
		<div>
			<a href="${ctx}/admin/addProduit" class="btn btn-link">ajout produit</a>
		</div>
		
		<table class="table">
			<tr>
				<th>Libelle</th>
				<th>Taille</th>
				<th>Prix</th>
				<th>Description</th>
				<th>Photo</th>
			</tr>
			
			<c:forEach items="${sandwichs}" var="s">
				<tr>
					<td>${s.libelle}</td>
					<td>${s.taille}</td>
					<td>${s.prix}</td>
					<td>${s.description}</td>
					<td>${s.photo}</td>
				</tr>
			</c:forEach>
		</table>
	</div>	
		
		
<%@include file="../footer.jsp" %>