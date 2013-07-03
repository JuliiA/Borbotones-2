<html xmlns="http://www.w3.org/1999/xhtml">
<head>		
	<meta name="layout" content="main">
	<%--link para ranking --%>
	<link rel="stylesheet" href="${resource(dir: 'css', file: 'ranking.css')}" type="text/css">
</head>
<Body>
	<h2>Hola ${session.username} !</h2>
	<div class="col_370 left">
		<div class="scrollContainer">
			<g:form name="listaCanciones">
				<h4>Todas nuestras canciones:</h4>
				<table>
				<g:each in="${canciones}" var="cancion">
					<tr>
						<g:link url="${cancion.url}" controller="Canciones" action="index">${cancion.author + '-' + cancion.name}</g:link>
						</br>
						<p>Estrellas asignadas: ${cancion.estrella}
						<div class="ec-stars-wrapper">
							<g:link name="estre" params="[idCancion:cancion.cancionOriginalId,estrellas:1]" action="cantEstrellas" controller="canciones"><h3>&#9733;</h3></g:link>
							<g:link name="estre" params="[idCancion:cancion.cancionOriginalId,estrellas:2]" action="cantEstrellas" controller="canciones"><h3>&#9733;</h3></g:link>
							<g:link name="estre" params="[idCancion:cancion.cancionOriginalId,estrellas:3]" action="cantEstrellas" controller="canciones"><h3>&#9733;</h3></g:link>
							<g:link name="estre" params="[idCancion:cancion.cancionOriginalId,estrellas:4]" action="cantEstrellas" controller="canciones"><h3>&#9733;</h3></g:link>
							<g:link name="estre" params="[idCancion:cancion.cancionOriginalId,estrellas:5]" action="cantEstrellas" controller="canciones"><h3>&#9733;</h3></g:link>
						</div>
						<g:link name="descargar" params="[idCancion:cancion.cancionOriginalId]" action="download" controller="canciones">+Descargar canción!</g:link></br>
						<g:link name="comentar" params="[idCancion:cancion.cancionOriginalId]" action="comentar" controller="canciones">+Comentar canción!</g:link>
						</p>
					</tr>
				</g:each>
				</table>
				<noscript>Necesitas tener habilitado javascript para poder votar</noscript>	
			</g:form>
		</div>
	</div>
</Body>
</html>
