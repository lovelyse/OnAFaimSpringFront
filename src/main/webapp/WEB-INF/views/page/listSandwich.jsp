<%@include file="../header.jsp" %>
	
	<div class="container" id="content">
		
		<div>
			<a href="${ctx}/page/addProduit" class="btn btn-link">ajout produit</a>
		</div>
		
		<table class="table">
			<tr>
				<th>Libelle</th>
				<th>Taille</th>
				<th>Prix</th>
				<th>Description</th>
				<th>Photo</th>
				<th></th>
				<th></th>
			</tr>
			
			<c:forEach items="${sandwichs}" var="s">
				<tr>
					<td>${s.libelle}</td>
					<td>${s.taille}</td>
					<td>${s.prix}</td>
					<td>${s.description}</td>
					<td>${s.photo}</td>
					<td><a href="${ctx}/page/editProduit?id=${p.id}" class="btn btn-info">editer</a></td>
					<td><a href="${ctx}/page/listViennoiserie/delete?id=${p.id}" class="btn btn-danger">supprimer</a></td>
				</tr>
			</c:forEach>
		</table>
	</div>	
		
		
<%@include file="../footer.jsp" %>