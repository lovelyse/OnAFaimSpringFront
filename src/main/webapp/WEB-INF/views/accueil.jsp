<%@include file="header.jsp" %>
		
		<div id="content" class="row">
			<div id="menu" class="col-3">
					<ul>
						<li><a href="${ctx}/menu/sandwichs">Sandwichs</a></li>
						<li><a href="${ctx}/menu/viennoiseries">Viennoiseries</a></li>
						<li><a href="${ctx}/menu/gateaux">Gâteaux</a></li>
						<li><a href="${ctx}/menu/boissons">Boissons</a></li>
						<li><a href="${ctx}/menu/menus">Menus</a></li>
						<li><a href="${ctx}/menu/devis">Devis</a></li>
						<!-- a faire apparaitre uniquement quand tu es admin -->
						<li><a href="${ctx}/admin/gestionClient">Client</a></li>
					</ul>
			</div>
			<div class="col-9">
					<img id="imgIndex" src="image/boulangerie3.jpg" height="500">
			</div>
		</div>	
			
<%@include file="footer.jsp" %>


