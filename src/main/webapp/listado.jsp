<%@page import="java.util.List"%>
<%@page import="ar.com.codoacodo.dto.Producto"%>
<html>


<%@include file="head.jsp"%>


<body>

	<%@include file="navbar.jsp"%>
	<main class="page landing-page">
		<div class="container">
			<section>
				<br>
				<h1>Listado</h1>

				<%
				if (((List<Producto>) request.getAttribute("listado")).isEmpty()) {
				%>
				<div class="alert alert-primary alert-dismissible fade show"
					role="alert">
					<button type="button" class="btn-close" data-bs-dismiss="alert"></button>
					<strong>Aviso!</strong>No se ah encontrado ninguna coincidencia en
					la busqueda.
				</div>
				<%
				}
				%>

				<%
				String operacion = (String) request.getAttribute("ok");

				if (operacion == "true") {
				%>
				<div class="alert alert-danger alert-dismissible fade show"
					role="alert">
					<strong>Aviso!</strong> Ah ocurrido un error al ingresar los datos.
					<button type="button" class="btn-close" data-bs-dismiss="alert"
						data-bs-target="#my-alert" aria-label="Close"></button>
				</div>
				<%
				} else if (operacion == "false") {
				%>
				<div class="alert alert-success alert-dismissible fade show"
					role="alert">
					<strong>ok!</strong> Se cargaron los datos con exito.
					<button type="button" class="btn-close" data-bs-dismiss="alert"
						data-bs-target="#my-alert" aria-label="Close"></button>
				</div>
				<%
				}
				%>

				<div class="table-responsive text-center">
					<table class="table table-striped table-hover border-light "
						border="2">
						<thead class="table-Secondary text-center">
							<tr>
								<th scope="col">&nbsp;</th>
								<th scope="col">ID</th>
								<th scope="col">NOMBRE</th>
								<th scope="col">PRECIO</th>
								<th scope="col">C&Oacute;DIGO</th>
								<th scope="col">&nbsp;</th>
							</tr>
						</thead>
						<%
						List<Producto> listado = (List<Producto>) request.getAttribute("listado");
						%>
						<tbody class="table-Primary text-center">
							<%
							for (Producto unProducto : listado) {
							%>
							<tr class="">
								<td><input class="form-check-input" type="checkbox"
									value="" id="flexCheckDefault"></td>
								<th scope="row"><%=unProducto.getIdProducto()%></th>
								<td><%=unProducto.getNombre()%></td>
								<td><%=unProducto.getPrecio()%></td>
								<td><%=unProducto.getCodigo()%></td>
								<td><a class="btn btn-danger"
									href="<%=request.getContextPath()%>/api/EliminarController?id=<%=unProducto.getIdProducto()%>"
									role="button">Eliminar</a> | <a class="btn btn-secondary"
									href="<%=request.getContextPath()%>/api/EditarController?id=<%=unProducto.getIdProducto()%>"
									role="button">Editar</a>
							</tr>
							<%
							}
							%>
						</tbody>
					</table>
				</div>

			</section>
			<br>
			<nav aria-label="listado">
				<ul class="pagination pagination-lg justify-content-center">
					<li class="page-item"><a class="page-link" href="#">1</a></li>
					<li class="page-item active" aria-current="page"><a
						class="page-link" href="#">2</a></li>
					<li class="page-item"><a class="page-link" href="#">3</a></li>
				</ul>
			</nav>
		</div>
	</main>
	<%@include file="footer.jsp"%>

</body>
</html>