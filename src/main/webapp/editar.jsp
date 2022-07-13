<%@page import="ar.com.codoacodo.dto.Producto"%>
<html>
<head>
<%@include file="head.jsp"%>
</head>

<body>
	<main>

		<%@include file="navbar.jsp"%>
		<div class="container">
			<section>
				<%
				Producto producto = (Producto) request.getAttribute("producto");
				%>
				<br>
				<h1>Editar producto</h1>

				<form method="POST"
					action="<%=request.getContextPath()%>/api/EditarController">

					<div class="container position-relative">
						<div class="row d-flex justify-content-center">
							<div class="col-8">
								<div class="card ">
									<div class="card-body">

										<input name="id" type="hidden"
											value="<%=producto.getIdProducto()%>">

										<div class="mb-3">
											<label for="exampleFormControlInput1" class="form-label">Nombre</label>
											<input name="nombre" value="<%=producto.getNombre()%>"
												type="text" class="form-control"
												id="exampleFormControlInput1" placeholder="Nombre"
												maxlength="50" required>
										</div>
										<div class="mb-3">
											<label for="exampleFormControlTextarea1" class="form-label">Precio</label>
											<input name="precio" value="<%=producto.getPrecio()%>"
												type="number" class="form-control"
												id="exampleFormControlTextarea1" required>
										</div>
										<div class="mb-3">
											<label for="exampleFormControlTextarea1" class="form-label">Descripcion</label>
											<textarea name="descripcion" class="form-control" row="4"
												aria-label="With textarea" maxlength="120" required style="resize: none;"><%=producto.getDescripcion()%></textarea>
										</div>
										<div class="mb-3">
											<label for="exampleFormControlTextarea1" class="form-label">Im&aacute;gen</label>
											<input name="imagen" type="file" class="form-control"
												id="exampleFormControlTextarea1" accept="image/png, image/jpeg">
										</div>
										<div class="mb-3">
											<label for="exampleFormControlTextarea1" class="form-label">C&oacute;digo</label>
											<input name="codigo" readonly="readonly"
												value="<%=producto.getCodigo()%>" type="text"
												class="form-control" id="exampleFormControlTextarea1"
												maxlength="7" required>
										</div>
										<button class="btn btn-primary">Grabar</button>

									</div>
								</div>
							</div>
						</div>
					</div>
				</form>
			</section>
		</div>
	</main>

	<%@include file="footer.jsp"%>
</body>
</html>