<!doctype html>
<html lang="en" class="no-js">
<head>

	<title><g:layoutTitle default="Bienvenido a Borbotones!" /></title>
	
	<script src="js/jquery-1.2.6.js" type="text/javascript"></script>
	<script src="js/jquery.scrollTo-1.3.3.js" type="text/javascript"></script>
	<script src="js/jquery.localscroll-1.2.5.js" type="text/javascript"
		charset="utf-8"></script>
	<script src="js/jquery.serialScroll-1.2.1.js" type="text/javascript"
		charset="utf-8"></script>
	<script src="js/coda-slider.js" type="text/javascript" charset="utf-8"></script>
	<script src="js/jquery.easing.1.3.js" type="text/javascript"
		charset="utf-8"></script>
	
	<link rel="stylesheet" href="${resource(dir: 'css', file: 'templatemo_style.css')}" type="text/css">
	<link rel="stylesheet" href="${resource(dir: 'css', file: 'coda-slider.css')}" type="text/css">
	<link rel="stylesheet" href="${resource(dir: 'css', file: 'menu.css')}" type="text/css">
	
	<%--Reproductor --%>
	<sm:inlinePlayer />
		
	<g:layoutHead />
	<r:layoutResources />
</head>
<body>
	<div id="slider">		
		<div id="templatemo_header_wrapper">
			<div id="templatemo_header">
			<h1>Borbotones</h1>				
			</div>
		</div>	
		
		<div id="templatemo_main">
			<div id="templatemo_content">
				<div class="scroll">
					<div class="panel" id="home">								
						<g:layoutBody/>
					</div>	
				</div>
			</div>
			<div id="templatemo_sidebar">
			<div id="menu">
				<ul class="navigation">
					<li><g:link action="logout" controller="Login">Salir</g:link></li>
					<li><g:link action="busqueda" controller="busquedaDeCancion">Buscar</g:link></li>
					<li><g:link action="mostrarBusquedas" controller="busquedaDeCancion">Busquedas</g:link></li>
					<li><g:link action="mejorPuntuacion" controller="canciones">Ranking</g:link></li>
					<h5>Perfil:</h5>
					<li><g:link action="defineModelo" controller="Canciones">Crear lista</g:link></li>
					<li><g:link action="listarListas" controller="Canciones">Ver mis listas</g:link></li>
				</ul>	
			</div>
		</div>
		</div>
				
		
			
		<div id="templatemo_footer_wrapper">
			<div id="templatemo_footer">
				Taller Web II - Unlam - 2013
				<div class="cleaner">
				</div>
			</div>
		</div>
	</div>
</body>
</html>