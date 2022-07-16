<!-- 
https://bootswatch.com/vapor/
https://www.svgrepo.com/vectors/bootstrap/multicolor/
https://getbootstrap.com/docs/5.2/examples/features/
 -->

<html>

<%@include file="head.jsp"%>


<body>

	<%@include file="navbar.jsp"%>

	<main class="page service-page" id="home">
		<br>
		<h1 class="visually-hidden">Bienvenido a mi primer ABM</h1>


		<div class="px-4 py-5 my-5 text-center">
			<img class=" mx-auto mb-4"
				src="<%=request.getContextPath()%>/asset/img/logos/heroku.svg"
				alt="" width="72" height="57"> <img class=" mx-auto mb-4"
				src="<%=request.getContextPath()%>/asset/img/logos/js.svg" alt=""
				width="72" height="57"> <img class=" mx-auto mb-4"
				src="<%=request.getContextPath()%>/asset/img/logos/postgresql.svg"
				alt="" width="72" height="57"> <img class=" mx-auto mb-4"
				src="<%=request.getContextPath()%>/asset/img/logos/github.svg"
				alt="" width="72" height="57"> <img class=" mx-auto mb-4"
				src="<%=request.getContextPath()%>/asset/img/logos/visual.svg"
				alt="" width="72" height="57"> <img class=" mx-auto mb-4"
				src="<%=request.getContextPath()%>/asset/img/logos/java.svg" alt=""
				width="72" height="57"> <img class=" mx-auto mb-4"
				src="<%=request.getContextPath()%>/asset/img/logos/mysql.svg" alt=""
				width="72" height="57"> <img class=" mx-auto mb-4"
				src="<%=request.getContextPath()%>/asset/img/logos/html.svg" alt=""
				width="72" height="57"> <img class=" mx-auto mb-4"
				src="<%=request.getContextPath()%>/asset/img/logos/css.svg" alt=""
				width="72" height="57"> <img class=" mx-auto mb-4"
				src="<%=request.getContextPath()%>/asset/img/logos/bootstrap.svg"
				alt="" width="72" height="57"> <img class=" mx-auto mb-4"
				src="<%=request.getContextPath()%>/asset/img/logos/eclipse.svg"
				alt="" width="72" height="57">

			<h1 class="display-5 fw-bold">Tecnologia Utilizadas</h1>
			<div class="col-lg-6 mx-auto">
				<p class="lead mb-4">A lo largo de este cuatrimestre de la 4ta
					edicion de Codo a Codo, aprendimos a maquetar y estilizar paginas
					web con diversas tecnologias y frameworks, para luego darle
					interacciones a sus componentes mediente el lenguaje Js.</p>
				<p class="lead mb-4">Ademas apendimos la logica de trabajo que
					esta por detras del sitio web con un Core java utilizando servlets
					y persistencia de datos en 2 motores de DataBase, de forma local y
					remota.</p>
				<p class="lead mb-4">Para finalizar trabajamos de forma
					compartida y colaborativa con el profesor mediante el sistema de
					repositorios vercionado GIT y el despliegue en la red de nuestra
					web finalizada con Heroku.</p>
			</div>
		</div>


		<div class="b-example-divider"></div>


		<div class="container my-5">
			<div
				class="row p-4 pb-0 pe-lg-0 pt-lg-5 align-items-center rounded-3 border shadow-lg">
				<div class="col-lg-7 p-3 p-lg-5 pt-lg-3">
					<h1 class="display-4 fw-bold lh-1">Proyecto presentado</h1>
					<p class="lead">Se presenta el proyecto realizado que consiste
						en un ABM de productos.</p>
				</div>
				<div class="col-lg-4 offset-lg-1 p-0 overflow-hidden shadow-lg">
					<img class="rounded-lg-3"
						src="<%=request.getContextPath()%>/asset/img/logos/presentacion.jpg"
						alt="" width="720" height="400">
				</div>
			</div>
		</div>


		<div class="b-example-divider"></div>



		<div class="px-4 pt-5 my-5 text-center border-bottom">
			<h1 class="display-4 fw-bold">Modo de uso</h1>
			<div class="col-lg-6 mx-auto">

				<p class="lead">
					Utilice la solapa <strong>Alta</strong> para ingresar nuevos
					productos, luego podra ver la lista de productos en sistema desde
					la <strong>Solapa Listado</strong>, tambien podra eliminar y editar
					los productos comodamente desde el mismo sector y ademas podra ver
					los ultimos productos ingresados en el <strong>sector de
						novedades</strong>.
				</p>
				<p class="lead">Proximamente se incorporara la funcionalidad de
					iniciar sesion para tener habilitado o no el cargado de produtos.</p>
			</div>
			<div class="overflow-hidden" style="max-height: 30vh;">
				<div class="container px-5">
					<img src="<%=request.getContextPath()%>/asset/img/logos/heroku.jpg"
						class="img-fluid border rounded-3 shadow-lg mb-4"
						alt="Example image" width="900" height="500" loading="lazy">
				</div>
			</div>
		</div>


	</main>



	<%@include file="footer.jsp"%>
</body>
</html>