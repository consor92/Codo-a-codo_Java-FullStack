<%@page import="java.util.List"%>
<%@page import="ar.com.codoacodo.dto.Producto"%>

<html>

<%@include file="head.jsp"%>

<body>

	<%@include file="navbar.jsp"%>




	<main class="page service-page">
		<div class="row mb-5">
			<div class="col-md-8 col-xl-6 text-center mx-auto">
				<br>
				<h2>Productos Recientes</h2>
				<p class="w-lg-50">Una muestra de nuestros productos
					recientemente incorporados</p>
			</div>
		</div>

		<%
		List<Producto> listado = (List<Producto>) request.getAttribute("listado");
		%>

		<div id="carousel-1" class="carousel slide  carousel-fade"
			data-bs-ride="carousel"
			data-bs-interval="4000"
			data-bs-pause="false">
			<div class="carousel-inner">



				<div class="carousel-item active">
					<div class="container py-3 py-xl-5">
						<div class="row gy-5 row-cols-1 row-cols-md-2 row-cols-xl-3">

							<%
							int cont = 0;
							for (Producto unProducto : listado) {
							%>

							<div class="col">
								<div class="card text-white bg-primary border-secondary  mb-3" style="max-width: 20rem;" > 
									<div class="card-header">
										<h4 class="card-title text-Light"><strong><%=unProducto.getNombre().toUpperCase()%></strong></h4>
									</div>
									<div class="card-body">
									<p class="text-Success card-text mb-0">
											Precio:
											<%=unProducto.getPrecio()%>$
										</p>
									<img class="card-img-top w-100 d-block fit-cover"
										style="height: 200px;" src="<%=request.getContextPath()%>/asset/img/<%=unProducto.getImagen()%>"/>					
										<p class="card-text"><%=unProducto.getDescripcion().toLowerCase()%></p>
										<div class="d-flex">
											<div>
												<p class="fw-bold mb-0">Codigo</p>
												<p class="text-muted mb-0"><%=unProducto.getCodigo()%></p>
											</div>
										</div>
									</div>
								</div>
							</div>
							<%
							cont++;

							if (cont % 3 == 0) {
							%>
						</div>
					</div>
				</div>
				<div class="carousel-item">
					<div class="container py-4 py-xl-5">
						<div class="row gy-4 row-cols-1 row-cols-md-2 row-cols-xl-3">
							<%
							}
							}
							%>
						</div>
					</div>
				</div>

			</div>

				<div>
					<a class="carousel-control-prev " href="#carousel-1" role="button"
						data-bs-slide="prev"><span
						class="carousel-control-prev-icon" aria-hidden="true">d</span><span
						class="visually-hidden">Previous</span></a>
						<a
						class="carousel-control-next " href="#carousel-1" role="button"
						data-bs-slide="next"><span
						class="carousel-control-next-icon" aria-hidden="true"></span><span
						class="visually-hidden">Next</span></a>
				</div>
				
				<ol class="carousel-indicators">
					<li class="active" data-bs-target="#carousel-1"
						data-bs-slide-to="0"></li>
					<%  for(int i = 1 ; i <= (int)(cont / 3) ; i++) { 
						String pag = String.valueOf(i);%>
						<li data-bs-target="#carousel-1" data-bs-slide-to="<%pag.toString();%>"></li>
					<% }  %>
				</ol>
						
		</div>
	</main>

	<%@include file="footer.jsp"%>
</body>
</html>