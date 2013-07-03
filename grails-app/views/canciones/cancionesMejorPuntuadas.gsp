<html xmlns="http://www.w3.org/1999/xhtml">
<head>		
	<meta name="layout" content="main">
	<%--link para ranking --%>
	<link rel="stylesheet" href="${resource(dir: 'css', file: 'ranking.css')}" type="text/css">
</head>
<Body>
	<h2>Hola ${session.username} !</h2>
	<div class="col_370">
		<div class="scrollContainer">
		<h4>Canciones mejor puntuadas!</h4>
			<g:form>	
				<g:each in="${cincoEstrellas}" var="cancion">
				<table>
					<tr>
						<h5>Canciones con 5 estrellas: </h5></br>
						<g:link url="${cancion.url}" controller="canciones" action="mejorPuntuacion">${cancion.author + '-' + cancion.name}</g:link>
						</br>
					</tr>
				</table>
				</g:each> 
				<g:each in="${cuatroEstrellas}" var="cancion">
				<table>
					<tr>
						<h5>Canciones con 4 estrellas: </h5></br>
						<g:link url="${cancion.url}" controller="canciones" action="mejorPuntuacion">${cancion.author + '-' + cancion.name}</g:link>
						</br>
					</tr>
				</table>
				</g:each>  	
			</g:form>
		</div>
	</div>
</Body>
</html>
