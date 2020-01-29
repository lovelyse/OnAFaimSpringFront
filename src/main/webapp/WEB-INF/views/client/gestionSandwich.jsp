<%@include file="../header.jsp" %>


<div id="content" class="col-8">
		<h2>Liste des sandwich</h2>
			<div class="row">
				<div class="crew col-2">
					<h4>Poulet</h4>
					<table>
						<tr>
							<td>demi</td>
							<td>2</td>
							<td><button></button></td>
						</tr>
						<tr>
							<td>grand</td>
							<td>4</td>
							<td><button></button></td>
						</tr>
					</table>
				</div>
				<div class="crew col-2">
					<h4>Saumon</h4>
					<table>
						<tr>
							<td>demi</td>
							<td>2.5</td>
							<td><button></button></td>
						</tr>
						<tr>
							<td>grand</td>
							<td>5</td>
							<td><button></button></td>
						</tr>
					</table>
				</div>
				<div class="crew col-2">
					<h4>Jambon</h4>
					<table>
						<tr>
							<td>demi</td>
							<td>1.5</td>
							<td><button></button></td>
						</tr>
						<tr>
							<td>grand</td>
							<td>3</td>
							<td><button></button></td>
						</tr>
					</table>
				</div>
				<div class="crew col-2">
					<h4>Vegetarien</h4>
					<table>
						<tr>
							<td>demi</td>
							<td>3.5</td>
							<td><button></button></td>
						</tr>
						<tr>
							<td>grand</td>
							<td>7</td>
							<td><button></button></td>
						</tr>
					</table>
				</div>
				
				
			</div>
				
				
				<div class="form-group">
					<form:label path="nom">nom:</form:label>
					<form:input path="nom" cssClass="form-control"/>
				</div>
				<div class="form-group">
					<form:label path="prenom">prenom:</form:label>
					<form:input path="prenom" cssClass="form-control"/>
				</div>
				<div class="form-group">
					<form:label path="numero">numero de telephone:</form:label>
					<form:input type="number" path="numero" cssClass="form-control"/>
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
					<a href="${ctx}/accueil" class="btn btn-warning">annuler</a>
				</div>
				
		</form:form>
	</div>	
<%@include file="../footer.jsp" %>
