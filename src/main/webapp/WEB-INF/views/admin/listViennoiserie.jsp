<%@include file="../header.jsp" %>

	<h1>Admin : Gestion viennoiserie</h1>
	
	
	
	<div class="container">
	
	
		<table class="table">
			<tr>
				<th>id</th>
				<th>description</th>
				<th>prix</th>
				<th>taille</th>
				<th></th>
			</tr>
			<c:forEach items="${produit}" var="p">
				<tr>
					<td>${p.id}</td>
					<td>${p.description}</td>
					<td>${p.prix}</td>
					<td>${p.taille}</td>
					<td><a href="${ctx}/admin/editViennoiserie/edit?id=${p.id}" class="btn btn-info">editer</a></td>
					<td><a href="${ctx}/admin/listViennoiserie/delete?id=${p.id}" class="btn btn-danger">supprimer</a></td>
				</tr>
			</c:forEach>
		</table>
		
		<div>
			<a href="${ctx}/admin/editViennoiserie" class="btn btn-link">Ajouter viennoiserie</a>
		</div>
		
		
	</div>

<%@include file="../footer.jsp" %>