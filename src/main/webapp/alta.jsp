<html>
<head>
<%@include file="head.jsp"%>
</head>

<body>
	<main>
		<%@include file="navbar.jsp"%>
		<div class="container">
			<section class="position-relative py-4">
				<br>
				<h1>Ingreso de nuevos productos</h1>

				<form method="post"
					action="<%=request.getContextPath()%>/CreateController" enctype="multipart/form-data">
					<div class="container position-relative">
						<div class="row d-flex justify-content-center">
							<div class="col-8">
								<div class="card ">
									<div class="card-body">

										<div class="mb-3">
											<label for="exampleFormControlInput1" class="form-label">Nombre</label>
											<input name="nombre" type="text" class="form-control"
												id="exampleFormControlInput1" placeholder="Nombre"
												maxlength="50" required>
										</div>
										<div class="mb-3">
											<label for="exampleFormControlTextarea1" class="form-label">Precio</label>
											<input name="precio" type="number" class="form-control"
												id="exampleFormControlTextarea1" required>
										</div>
										<div class="mb-3">
											<label for="exampleFormControlTextarea1" class="form-label">Descripcion</label>
											<textarea name="descripcion" class="form-control" row="4"
												aria-label="With textarea" maxlength="120" required style="resize: none;"></textarea>
										</div>
										<div class="mb-3">
											<label for="exampleFormControlTextarea1" class="form-label">Im&aacute;gen</label>
											<input name="imagen" type="file" class="form-control"
												id="exampleFormControlTextarea1" accept="image/png, image/jpeg">
										</div>
										<div class="mb-3">
											<label for="exampleFormControlTextarea1" class="form-label">C&oacute;digo</label>
											<input name="codigo" type="text" class="form-control"
												id="exampleFormControlTextarea1" maxlength="7" required>
										</div>
										<button class="btn btn-primary">Dar de alta</button>

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