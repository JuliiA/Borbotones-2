<html xmlns="http://www.w3.org/1999/xhtml">
<head>		
	<meta name="layout" content="main">
	<%--link para ranking --%>
	<link rel="stylesheet" href="${resource(dir: 'css', file: 'ranking.css')}" type="text/css">
</head>
<body>
	<h2>Hola ${session.username} !</h2>
	<div class="col_370 float_l">
		<div id="contenedorDeMusica" align="center">
			<g:form name="listas">	
				<g:each in="${listas}" var="lista">
					<h3>Nombre de la lista: ${lista.name}</h3>
					<table>
						<g:each in="${lista.canciones}" var="cancion">
							<tr>
								<g:link url="${cancion.url}" controller="canciones" action="listarListas">${cancion.author + '-' + cancion.name}</g:link>
								</br>
							</tr>
						</g:each>
					</table>
				</g:each>  	
			</g:form>
		</div>
	</div>
</body>
</html>