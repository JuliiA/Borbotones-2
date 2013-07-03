<html xmlns="http://www.w3.org/1999/xhtml">
<head>		
	<meta name="layout" content="main">
	<%--link para ranking --%>
	<link rel="stylesheet" href="${resource(dir: 'css', file: 'ranking.css')}" type="text/css">
</head>
<body>
	<h2>Hola ${session.username} !</h2>
		<div id="contenedorDeMusica" align="center">
			<g:form action="crearLista" controller="Canciones">	
				Nombre de la lista:
				<g:textField name="nombreLista" placeholder="Ingrese nombre de la lista"/>
				<g:each in="${canciones}" var="cancion">  		
					<p>
						<g:link controller="Canciones" action="list">${cancion.author + '-' + cancion.name}</g:link>
						<g:checkBox name="idCancion" checked="false" value="${cancion.cancionOriginalId}"/>
						+ Agregar
					</p>						
				</g:each>
				<g:submitButton name="Crear Lista!"/>	  	
			</g:form>
		</div>
</body>
</html>