<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>
	<link rel="stylesheet" href="Css/parte1y2.css">
	<link rel="stylesheet" href="Css/parte3y4.css">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
		integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>

<body>
	<header>
		<!--PARTE 1-->
		<nav>
			<div class="contenedor">
				<div id="logo">
					<img src="img/codoacodo.png" alt="">
					<h2>Conf Bs As</h2>
				</div>

				<div class="hipervinculos">
					<a href="FrontController?accion=">La Conferencia</a>
					<a href="#losOradores">Los oradores</a>
					<a href="#honolulu">El lugar y la Fecha</a>
					<a href="#convertiteOrador">Conviertete en orador</a>
					<a href="FrontController?accion=registrar"><span>Comprar Tickets</span></a>
					<a href="FrontController?accion=BackOffice"> <span>Back Office</span> </a>
				</div>
			</div>
		</nav>
	</header>

	<main>
		<!--PARTE 2-->
		<section id="laConferencia">
			<div id="imagenesBs" class="carousel slide " data-bs-ride="carousel ">

				<div class="carousel-inner ">
					<div class="carousel-item active">
						<img src="img/ba1.jpg" class="d-block w-100" alt="...">
						<div class="carousel-caption">
							<div class="textoCarousel">
								<h2>Conf Bs As</h2>
								<p>Bs As llega por primera vez a Argentina. Un evento para compartir con nuestra
									comunidad el conocimiento y experiencia de los expertos que estan creando el futuro
									de Internet. Ven a conocer a miembros del evento, a otros estudiantes de Codo a Codo
									y los oradores de primer nivel que tenemos para ti. Te esperamos!</p>
								<div id="botonesCarrousel">
									<button type="button" class="btn btn-outline-light"><a
											href="#convertiteOrador">Quiero ser orador</a></button>
									<button type="button" class="btn btn-success"><a href="FrontController?accion=registrar">Comprar
											Tickets</a></button>
								</div>
							</div>

						</div>
					</div>
					<div class="carousel-item">
						<img src="img/ba2.jpg" class="d-block w-100" alt="...">
						<div class="carousel-caption">
							<div class="textoCarousel">
								<h2>Conf Bs As</h2>
								<p>Bs As llega por primera vez a Argentina. Un evento para compartir con nuestra
									comunidad el conocimiento y experiencia de los expertos que estan creando el futuro
									de Internet. Ven a conocer a miembros del evento, a otros estudiantes de Codo a Codo
									y los oradores de primer nivel que tenemos para ti. Te esperamos!</p>
								<div id="botonesCarrousel">
									<button type="button" class="btn btn-outline-light"><a
											href="#convertiteOrador">Quiero ser orador</a></button>
									<button type="button" class="btn btn-success"><a href="/Codigo/parte2.html">Comprar
											Tickets</a></button>
								</div>
							</div>
						</div>
					</div>
					<div class="carousel-item">
						<img src="img/ba3.jpg" class="d-block w-100" alt="...">
						<div class="carousel-caption">
							<div class="textoCarousel">
								<h2>Conf Bs As</h2>
								<p>Bs As llega por primera vez a Argentina. Un evento para compartir con nuestra
									comunidad el conocimiento y experiencia de los expertos que estan creando el futuro
									de Internet. Ven a conocer a miembros del evento, a otros estudiantes de Codo a Codo
									y los oradores de primer nivel que tenemos para ti. Te esperamos!</p>
								<div id="botonesCarrousel">
									<button type="button" class="btn btn-outline-light"><a
											href="#convertiteOrador">Quiero ser orador</a></button>
									<button type="button" class="btn btn-success"><a href="/Codigo/parte2.html">Comprar
											Tickets</a></button>
								</div>
							</div>
						</div>
					</div>
				</div>
				<button class="carousel-control-prev" type="button" data-bs-target="#imagenesBs" data-bs-slide="prev">
					<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Previous</span>
				</button>
				<button class="carousel-control-next" type="button" data-bs-target="#imagenesBs" data-bs-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Next</span>
				</button>
			</div>
		</section>

		<!--PARTE 2-->
		<section id="losOradores">
			<div id="subtitulo-Oradores">
				<p>CONOCE A LOS</p>
				<h2>ORADORES</h2>
			</div>
			<div class="tarjetas-Oradores">

				<div class="row row-cols-1 row-cols-md-3 g-4">
					<div class="col">
						<div class="card h-100">
							<img src="img/steve.jpg" class="card-img-top" alt="...">
							<div class="card-body">
								<div class="botoncitos">
									<button type="button" class="btn btn-warning">
										<h5>JavaScript</h5>
									</button>
									<button type="button" class="btn btn-info">
										<h5><span>React</span></h5>
									</button>
								</div>
								<h3 class="card-title">Steve Jobs</h3>
								<br>
								<p class="card-text">Lorem, ipsum dolor sit amet consectetur adipisicing elit. Hic nam
									alias suscipit inventore deserunt optio incidunt numquam molestias sit nulla cum, ea
									libero laudantium modi cumque. Veritatis officia quisquam ab!</p>
							</div>
						</div>
					</div>
					<div class="col">
						<div class="card h-100">
							<img src="img/bill.jpg" class="card-img-top" alt="...">
							<div class="card-body">
								<div class="botoncitos">
									<button type="button " class="btn btn-warning">
										<h5>JavaScript</h5>
									</button>
									<button type="button" class="btn btn-info">
										<h5><span>React</span></h5>
									</button>
								</div>

								<h3 class="card-title">Bill Gates</h3>
								<br>
								<p class="card-text">Lorem, ipsum dolor sit amet consectetur adipisicing elit. Hic nam
									alias suscipit inventore deserunt optio incidunt numquam molestias sit nulla cum, ea
									libero laudantium modi cumque. Veritatis officia quisquam ab!</p>
							</div>
						</div>
					</div>
					<div class="col">
						<div class="card h-100">
							<img src="img/ada.jpeg" class="card-img-top" alt="...">
							<div class="card-body">
								<div class="card-body">
									<div class="botoncitos">
										<button type="button " class="btn btn-secondary">
											<h5>Negocios</h5>
										</button>
										<button type="button" class="btn btn-danger">
											<h5>Startups</h5>
										</button>
									</div>
									<h3 class="card-title">Ada Lovelace</h3>
									<br>
									<p class="card-text">Lorem, ipsum dolor sit amet consectetur adipisicing elit. Hic
										nam alias suscipit inventore deserunt optio incidunt numquam molestias sit nulla
										cum, ea libero laudantium modi cumque. Veritatis officia quisquam ab!</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<section id="honolulu">
			<div class="contenedorParte4">
				<img src="img/honolulu.jpg" alt="" class="imagenHonolulu">
				<div class="textoYBoton">
					<h2>Bs As - Octubre</h2>
					<p>Buenos Aires es la provincia mas grande del estado de Argentina, en los Estados Unidos. Honolulu
						es la mas sureña de entre las principales ciudades estadounidenses. Aunque el nombre Honolulu se
						refiere al area urbana en la costa sureste de la isla de Oahu, la ciudad y el condado de
						Honolulu han formado una ciudad-condado consolidada que cubre toda la ciudad (aproximadamente
						600 km2 de superficie)</p>
					<div id="botonEspecial">
						<button type="button" class="btn btn-outline-light">
							<h5>Conoce Mas</h5>
						</button>
					</div>
				</div>

			</div>
		</section>


		<div id="convertiteOrador">
			<div class="convertiteTitulo">
				<p>CONVIERTETE EN UN</p>
				<h2><span>ORADOR</span></h2>
				<p>Anotate como orador para dar una <span>charla ignite</span>. Cuentanos de que quieres hablar!</p>
			</div>

			<form action="FrontController?accion=insertOrador" method="post">


				<div class="nombreYapellido">
					<input type="text" placeholder="Nombre" name="nombre">
					<input type="text" placeholder="Apellido" name="apellido">
				</div>
				<div class="textAREA">
					<textarea name="texto" id="" placeholder="Sobre que quieres hablar?"></textarea>

				</div>
				<div class="pruebaTexto">
					<p>Recuerda incluir un titulo para tu charla</p>
				</div>

				<button type="submit" class="botonEnvio">Enviar</button>
			</form>
		</div>
	</main>

	<!--PARTE FINAL-->
	<footer>
		<div class="footercito">
			<a href=""> Preguntas Frecuentes</a>

			<a href="">Contactanos</a>
			<a href="">Prensa</a>
			<a href="">Conferencias</a>

			<a href="">Terminos y
				condiciones</a>


			<a href="">Privacidad</a>
			<a href="">Estudiantes</a>

		</div>

	</footer>




	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>
</body>

</html>