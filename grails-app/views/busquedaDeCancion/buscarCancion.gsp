<!doctype html>
<html>
<head>
	<meta name="layout" content="main" />
	<title>Borbotones</title>
</head>
<body>
	<g:form action="buscarCancion" controller="busquedaDeCancion">	  		
		<h5>
			<g:textField name="cancionBuscada" placeholder="Buscar por nombre, autor o género"/>
			</br>
			Buscar por:
		  	<g:submitButton name="Cantante"/>	ó   	
		  	<g:submitButton name="Nombre"/>  
		  </h5>	
	</g:form>
	<g:each in="${busqueda}" var="cancion">
		<table>
			<tr>
				<g:link url="${cancion.url}" controller="Canciones" action="list">${cancion.author + '-' + cancion.name}</g:link>
				</br>
				<g:link name="descargar" params="[idCancion:cancion.cancionOriginalId]" action="download" controller="canciones">+Descargar canción!</g:link>
				</br>
			</tr>
		</table>	
	</g:each>
	<g:if test="${error}">
		<div>
			${error}
		</div>
	</g:if>
</body>
</html>